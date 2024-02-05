import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/user/blocs/grant_user_premium/grant_user_premium_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/premium_screen/bloc/purchase_bloc.dart';
import 'package:senpai/screens/premium_screen/widgets/premium_content.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

@RoutePage()
class PremiumPage extends StatelessWidget {
  final int userId;

  const PremiumPage({
    super.key,
    required this.userId,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => PurchaseBloc()..add(OnPlanInitEvent())),
        BlocProvider(create: (_) => getIt<GrantUserPremiumBloc>()),
      ],
      child: Scaffold(
        backgroundColor: $constants.palette.darkBlue,
        body: Stack(
          children: [
            PremiumContent(userId: userId),
            _buildGrantUserPremiumBlocListeners(),
          ],
        ),
      ),
    );
  }

  Widget _buildGrantUserPremiumBlocListeners() {
    return BlocBuilder<GrantUserPremiumBloc, MutationState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
            loading: () => SenpaiLoading(),
            failed: (error, result) {
              showSnackBarError(context, R.strings.serverError);
              return const SizedBox.shrink();
            },
            succeeded: (data, result) {
              final response = result.data;
              if (response == null) {
                logIt.wtf("A successful empty response just got set user");
                return const SizedBox.shrink();
              }
              final user = response["grantUserPremium"]["user"];
              if (user == null) {
                showSnackBarError(context, R.strings.nullUser);
                logIt.error("A user with error");
                return const SizedBox.shrink();
              }
              context.router.pop();
              return const SizedBox.shrink();
            },
            orElse: () => const SizedBox.shrink());
      },
    );
  }
}
