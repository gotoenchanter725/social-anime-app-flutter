part of 'purchase_bloc.dart';

@immutable
abstract class PurchaseEvent {}

class OnPlanInitEvent extends PurchaseEvent{}

class OnUpdatePlanEvent extends PurchaseEvent{
  final SubscriptionPlan subscriptionPlan;

  OnUpdatePlanEvent({required this.subscriptionPlan});
}