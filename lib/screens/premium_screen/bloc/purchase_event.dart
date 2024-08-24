part of 'purchase_bloc.dart';

@immutable
abstract class PurchaseEvent {}

class OnPlanInitEvent extends PurchaseEvent {}

class OnUpdatePlanEvent extends PurchaseEvent {
  final SubscriptionPlan subscriptionPlan;

  OnUpdatePlanEvent({required this.subscriptionPlan});
}

class OnNavigateEvent extends PurchaseEvent {}

class OnErrorEvent extends PurchaseEvent {
  final String message;
  OnErrorEvent(this.message);
}

class OnTapBuyConsumableEvent extends PurchaseEvent {
  final ProductDetails productDetails;
  final Map<String, PurchaseDetails>? purchases;

  OnTapBuyConsumableEvent({
    required this.productDetails,
    this.purchases,
  });
}

class OnTapBuyNonConsumableEvent extends PurchaseEvent {
  // final ProductDetails productDetails;
  final Map<String, PurchaseDetails> purchases;

  OnTapBuyNonConsumableEvent({
    // required this.productDetails,
    required this.purchases,
  });
}

class OnTapBuyConsumableAvatarEvent extends PurchaseEvent {
  final String productID;

  OnTapBuyConsumableAvatarEvent({
    required this.productID,
  });
}
