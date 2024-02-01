import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/models/subscription_plan_model.dart';
import 'package:senpai/services/in_app_purchase_service/consumable_store.dart';
// ignore: depend_on_referenced_packages
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
// ignore: depend_on_referenced_packages
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
// ignore: depend_on_referenced_packages
import 'package:in_app_purchase_android/billing_client_wrappers.dart';

import 'package:senpai/services/in_app_purchase_service/senpai_payment_queue_delegate.dart';
import 'package:senpai/utils/methods/aliases.dart';

part 'purchase_state.dart';
part 'purchase_event.dart';

// Auto-consume must be true on iOS.
// To try without auto-consume on another platform, change `true` to `false` here.
final bool kAutoConsume = Platform.isIOS || true;

const String _kSuperLike15IOS = '15SUPERLIKES';
const String _kSuperLike30IOS = '0984772';
const String _kSuperLike50IOS = '09845723';

const String _kPremiumSubscriptionIdIOS = '19960713';
const List<String> _kProductIdsIOS = <String>[
  _kSuperLike15IOS,
  _kSuperLike30IOS,
  _kSuperLike50IOS,
  _kPremiumSubscriptionIdIOS,
];

const String _kSuperLike15Android = '15superlikes';
const String _kSuperLike30Android = '30superlikes';
const String _kSuperLike50Android = '50superlikes';

const String _kPremiumSubscriptionIdAndroid = 'senpaipremium';

const List<String> _kProductIdsAndroid = <String>[
  _kSuperLike15Android,
  _kSuperLike30Android,
  _kSuperLike50Android,
  _kPremiumSubscriptionIdAndroid,
];

class PurchaseBloc extends Bloc<PurchaseEvent, PurchaseState> {
  List<SubscriptionPlan> subscriptionPlanList = [
    SubscriptionPlan(
      superLikeCount: 15,
      price: "\$3.99",
      productIdIOS: _kSuperLike15IOS,
      productIdAndroid: _kSuperLike15Android,
    ),
    SubscriptionPlan(
      superLikeCount: 30,
      price: "\$7.99",
      productIdIOS: _kSuperLike30IOS,
      productIdAndroid: _kSuperLike30Android,
    ),
    SubscriptionPlan(
      superLikeCount: 50,
      price: "\$12.99",
      productIdIOS: _kSuperLike50IOS,
      productIdAndroid: _kSuperLike50Android,
    ),
  ];

  SubscriptionPlan? selectedSubscription;

  late InAppPurchase inAppPurchase = InAppPurchase.instance;
  late StreamSubscription<List<PurchaseDetails>> _subscription;

  List<ProductDetails> products = <ProductDetails>[];
  List<PurchaseDetails> purchases = <PurchaseDetails>[];
  bool? isAvailablePurchase;
  ProductDetails? selectedProductDetails;
  bool? isPurchased = false;

  String? _purchaseErrorText;

  PurchaseBloc() : super(PlanInitialState()) {
    on<OnPlanInitEvent>((event, emit) async {
      emit(LoadingState());

      final Stream<List<PurchaseDetails>> purchaseUpdated =
          inAppPurchase.purchaseStream;
      _subscription = purchaseUpdated.listen(
        (List<PurchaseDetails> purchaseDetailsList) {
          _listenToPurchaseUpdated(purchaseDetailsList).then(
            (_) {
              if (_purchaseErrorText != null) {
                //TODO: return after test
                // add(OnErrorEvent(TextConstants.serverError));
                add(OnErrorEvent(
                    _purchaseErrorText ?? '---- listen _purchaseErrorText'));
              }
              if (isPurchased == true) {
                add(OnNavigateEvent());
              }
            },
          );
        },
        onDone: () {
          _subscription.cancel();
        },
        onError: (Object error) {
          logIt.debug(
            "-- PurchaseDetails onError $error",
          );
          //TODO: return after test
          add(OnErrorEvent("PurchaseDetails onError --  $error"));
          //     TextConstants.serverError));
        },
      );

      await _initStoreInfo().then((_) {
        if (_purchaseErrorText != null) {
          //TODO: return after test
          // add(OnErrorEvent(_purchaseErrorText ?? TextConstants.serverError));
          add(OnErrorEvent(
              _purchaseErrorText ?? '---- init  _purchaseErrorText'));
        } else {
          emit(UpdatePlanState());
        }
      });
    });

    on<OnUpdatePlanEvent>((event, emit) {
      selectedSubscription = event.subscriptionPlan;

      if (Platform.isIOS) {
        selectedProductDetails = products.firstWhere(
          (product) => product.id == selectedSubscription!.productIdIOS,
        );
      } else {
        selectedProductDetails = products.firstWhere(
          (product) => product.id == selectedSubscription!.productIdAndroid,
        );
      }

      if (selectedProductDetails != null) {
        emit(UpdatePlanState());
      } else {
        emit(PurchaseErrorState(message: TextConstants.serverError));
      }
    });

    on<OnNavigateEvent>((event, emit) {
      emit(UpdatePlanState());
    });

    on<OnErrorEvent>((event, emit) {
      emit(PurchaseErrorState(message: event.message));
    });

    on<OnTapBuyConsumableEvent>((event, emit) {
      late PurchaseParam purchaseParam;
      if (Platform.isAndroid) {
        purchaseParam = GooglePlayPurchaseParam(
          productDetails: event.productDetails,
          changeSubscriptionParam: null,
        );
      } else {
        purchaseParam = PurchaseParam(productDetails: event.productDetails);
      }
      inAppPurchase.buyConsumable(
        purchaseParam: purchaseParam,
        autoConsume: kAutoConsume,
      );
    });

    on<OnTapBuyNonConsumableEvent>((event, emit) {
      ProductDetails? productDetails;
      late PurchaseParam purchaseParam;

      if (Platform.isIOS) {
        productDetails = products.firstWhere(
          (product) => product.id == _kPremiumSubscriptionIdIOS,
        );
      } else {
        productDetails = products.firstWhere(
          (product) => product.id == _kPremiumSubscriptionIdAndroid,
        );
      }
      if (Platform.isAndroid) {
        // NOTE: verify the latest status of you your subscription by using server side receipt validation
        final GooglePlayPurchaseDetails? oldSubscription = _getOldSubscription(
          productDetails,
          event.purchases,
        );
        purchaseParam = GooglePlayPurchaseParam(
          productDetails: productDetails,
          changeSubscriptionParam: oldSubscription != null
              ? ChangeSubscriptionParam(
                  oldPurchaseDetails: oldSubscription,
                  prorationMode: ProrationMode.immediateWithTimeProration,
                )
              : null,
        );
      } else {
        purchaseParam = PurchaseParam(productDetails: productDetails);
      }
      inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
    });
  }

  Future<void> _initStoreInfo() async {
    final bool isAvailable = await inAppPurchase.isAvailable();
    if (!isAvailable) {
      isAvailablePurchase = isAvailable;
      products = <ProductDetails>[];
      purchases = <PurchaseDetails>[];
      return;
    }

    if (Platform.isIOS) {
      final InAppPurchaseStoreKitPlatformAddition iosPlatformAddition =
          inAppPurchase
              .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
      await iosPlatformAddition.setDelegate(SenpaiPaymentQueueDelegate());
    }

    final ProductDetailsResponse productDetailResponse =
        await inAppPurchase.queryProductDetails(
      Platform.isIOS ? _kProductIdsIOS.toSet() : _kProductIdsAndroid.toSet(),
    );

    if (productDetailResponse.error != null) {
      _purchaseErrorText = productDetailResponse.error!.message;
      isAvailablePurchase = isAvailable;
      products = productDetailResponse.productDetails;
      purchases = <PurchaseDetails>[];
      return;
    }

    if (productDetailResponse.productDetails.isEmpty) {
      //TODO: return after test
      _purchaseErrorText =
          'productDetailResponse.productDetails.isEmpty'; // TextConstants.serverError;
      isAvailablePurchase = isAvailable;
      products = productDetailResponse.productDetails;
      purchases = <PurchaseDetails>[];
      return;
    }

    await ConsumableStore.load();
    isAvailablePurchase = isAvailable;
    products = productDetailResponse.productDetails;
    if (productDetailResponse.notFoundIDs.isNotEmpty) {
      logIt.debug(
        "This IDs ${productDetailResponse.notFoundIDs.join(", ")}] not found",
      );
    }
    return;
  }

  Future<void> _listenToPurchaseUpdated(
    List<PurchaseDetails> purchaseDetailsList,
  ) async {
    _purchaseErrorText = null;
    for (final PurchaseDetails purchaseDetails in purchaseDetailsList) {
      if (purchaseDetails.status == PurchaseStatus.error) {
        logIt.debug("--- purchaseDetails ${purchaseDetails.error}");
        //TODO: return after test
        _purchaseErrorText =
            purchaseDetails.error?.message ?? TextConstants.invalidPurchase;
      } else if (purchaseDetails.status == PurchaseStatus.purchased ||
          purchaseDetails.status == PurchaseStatus.restored) {
        final bool valid = await _verifyPurchase(purchaseDetails);
        if (valid) {
          await deliverProduct(purchaseDetails).then((_) => isPurchased = true);
        } else {
          _purchaseErrorText = TextConstants.invalidPurchase;
          return;
        }
      }
      if (Platform.isAndroid) {
        if (!kAutoConsume &&
            (purchaseDetails.productID == _kSuperLike15Android ||
                purchaseDetails.productID == _kSuperLike30Android ||
                purchaseDetails.productID == _kSuperLike50Android)) {
          final InAppPurchaseAndroidPlatformAddition androidAddition =
              inAppPurchase
                  .getPlatformAddition<InAppPurchaseAndroidPlatformAddition>();
          await androidAddition.consumePurchase(purchaseDetails);
        }
      }
      if (purchaseDetails.pendingCompletePurchase) {
        await inAppPurchase.completePurchase(purchaseDetails);
      }
    }
  }

  Future<bool> _verifyPurchase(PurchaseDetails purchaseDetails) {
    // IMPORTANT!! Always verify a purchase before delivering the product.
    // For the purpose of an example, we directly return true.
    return Future<bool>.value(true);
  }

  Future<void> deliverProduct(PurchaseDetails purchaseDetails) async {
    // IMPORTANT!! Always verify purchase details before delivering the product.
    if (purchaseDetails.productID == _kPremiumSubscriptionIdAndroid ||
        purchaseDetails.productID == _kPremiumSubscriptionIdIOS) {
      purchases.add(purchaseDetails);
    } else {
      await ConsumableStore.save(purchaseDetails.purchaseID!);
      await ConsumableStore.load();
    }
  }

  GooglePlayPurchaseDetails? _getOldSubscription(
    ProductDetails productDetails,
    Map<String, PurchaseDetails> purchases,
  ) {
    GooglePlayPurchaseDetails? oldSubscription;
    if (productDetails.id == _kPremiumSubscriptionIdAndroid &&
        purchases[_kPremiumSubscriptionIdAndroid] != null) {
      oldSubscription = purchases[_kPremiumSubscriptionIdAndroid]!
          as GooglePlayPurchaseDetails;
    }
    return oldSubscription;
  }

  @override
  Future<void> close() async {
    if (Platform.isIOS) {
      final InAppPurchaseStoreKitPlatformAddition iosPlatformAddition =
          inAppPurchase
              .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
      iosPlatformAddition.setDelegate(null);
    }
    _subscription.cancel();
    return super.close();
  }
}
