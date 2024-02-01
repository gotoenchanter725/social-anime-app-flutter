part of 'purchase_bloc.dart';

@immutable
abstract class PurchaseState {}

class PlanInitialState extends PurchaseState {}

class UpdatePlanState extends PurchaseState {}

class PurchaseErrorState extends PurchaseState {
  final String message;

  PurchaseErrorState({required this.message});
}

class PurchasePendingState extends PurchaseState {}

class LoadingState extends PurchaseState {}

class SuccessfulState extends PurchaseState {}
