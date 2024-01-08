import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/models/subscription_plan_model.dart';

part 'purchase_state.dart';
part 'purchase_event.dart';

class PurchaseBloc extends Bloc<PurchaseEvent, PurchaseState> {
  List<SubscriptionPlan> subscriptionPlanList = [
    SubscriptionPlan(superLikeCount: 15, price: "\$3.99"),
    SubscriptionPlan(superLikeCount: 30, price: "\$7.99"),
    SubscriptionPlan(superLikeCount: 50, price: "\$12.99"),
  ];

  SubscriptionPlan? selectedSubscription;

  PurchaseBloc() : super(PlanInitialState()) {
    on<OnPlanInitEvent>((event, emit) {
      selectedSubscription = subscriptionPlanList[1];
      emit(UpdatePlanState());
    });

    on<OnUpdatePlanEvent>((event, emit) {
      selectedSubscription = event.subscriptionPlan;
      emit(UpdatePlanState());
    });
  }
}
