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

const String _kSuperLike15 = '15SUPERLIKES';
const String _kSuperLike30 = '0984772';
const String _kSuperLike50 = '09845723';

const String _kPremiumSubscriptionId = '19960713';
const List<String> _kProductIds = <String>[
  _kSuperLike15,
  _kSuperLike30,
  _kSuperLike50,
  _kPremiumSubscriptionId,
];

class PurchaseBloc extends Bloc<PurchaseEvent, PurchaseState> {
  List<SubscriptionPlan> subscriptionPlanList = [
    SubscriptionPlan(
      superLikeCount: 15,
      price: "\$3.99",
      productId: _kSuperLike15,
    ),
    SubscriptionPlan(
      superLikeCount: 30,
      price: "\$7.99",
      productId: _kSuperLike30,
    ),
    SubscriptionPlan(
      superLikeCount: 50,
      price: "\$12.99",
      productId: _kSuperLike50,
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
                add(OnErrorEvent(TextConstants.serverError));
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
          add(OnErrorEvent(TextConstants.serverError));
        },
      );

      await _initStoreInfo().then((_) {
        if (_purchaseErrorText != null) {
          add(OnErrorEvent(_purchaseErrorText ?? ''));
        } else {
          emit(UpdatePlanState());
        }
      });
    });

    on<OnUpdatePlanEvent>((event, emit) {
      selectedSubscription = event.subscriptionPlan;
      selectedProductDetails = products.firstWhere(
        (product) => product.id == selectedSubscription!.productId,
      );
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
      ProductDetails? productDetails = products.firstWhere(
        (product) => product.id == _kPremiumSubscriptionId,
      );

      late PurchaseParam purchaseParam;
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
        await inAppPurchase.queryProductDetails(_kProductIds.toSet());

    if (productDetailResponse.error != null) {
      _purchaseErrorText = productDetailResponse.error!.message;
      isAvailablePurchase = isAvailable;
      products = productDetailResponse.productDetails;
      purchases = <PurchaseDetails>[];
      return;
    }

    if (productDetailResponse.productDetails.isEmpty) {
      _purchaseErrorText = TextConstants.serverError;
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
        _purchaseErrorText = TextConstants.invalidPurchase;
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
        if (!kAutoConsume && purchaseDetails.productID == _kSuperLike15) {
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
    if (purchaseDetails.productID == _kPremiumSubscriptionId) {
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
    if (productDetails.id == _kPremiumSubscriptionId &&
        purchases[_kPremiumSubscriptionId] != null) {
      oldSubscription =
          purchases[_kPremiumSubscriptionId]! as GooglePlayPurchaseDetails;
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
