part of 'purchase_bloc.dart';

@immutable
abstract class PurchaseState {}

class PlanInitialState extends PurchaseState {}

class UpdatePlanState extends PurchaseState {}
