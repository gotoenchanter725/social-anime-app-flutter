import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/screens/premium_screen/bloc/purchase_bloc.dart';
import 'package:senpai/screens/premium_screen/widgets/premium_content.dart';

import 'package:senpai/utils/constants.dart';

@RoutePage()
class PremiumPage extends StatelessWidget {
  const PremiumPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => PurchaseBloc()..add(OnPlanInitEvent()))
      ],
      child: Scaffold(
        backgroundColor: $constants.palette.darkBlue,
        body: const Stack(
          children: [
            PremiumContent(),
          ],
        ),
      ),
    );
  }
}
