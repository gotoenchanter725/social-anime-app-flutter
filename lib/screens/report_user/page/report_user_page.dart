import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/user/blocs/report_user/report_user_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/report_user/report_user_params.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/report_user/bloc/report_bloc.dart';
import 'package:senpai/screens/report_user/widgets/report_user_content.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

@RoutePage()
class ReportUserPage extends StatelessWidget {
  final ReportUserParams reportArgs;

  const ReportUserPage({
    super.key,
    required this.reportArgs,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ReportBloc>(
          create: (context) => ReportBloc(),
        ),
        BlocProvider(create: (_) => getIt<ReportUserBloc>()),
      ],
      child: Scaffold(
        backgroundColor: $constants.palette.darkBlue,
        body: Stack(
          children: [
            ReportUserContent(
              roomId: reportArgs.roomId,
              reciepientId: reportArgs.reciepientId,
              currentUserId: reportArgs.currentUserId,
            ),
            _buildReportUserListeners(),
          ],
        ),
      ),
    );
  }

  Widget _buildReportUserListeners() {
    return BlocListener<ReportUserBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(
          failed: (error, result) {
            showSnackBarError(context, R.strings.serverError);
          },
          succeeded: (data, result) {
            final response = result.data;
            if (response == null) {
              logIt.wtf("A successful empty response just got set user");
              return;
            }
            dynamic model;
            try {
              model = response["reportUser"]["blocked"];
              if (model != null) {
                context.router.replaceAll([HomeRoute()]);
              }
            } catch (e) {
              logIt.error(
                  "Error accessing submitVerifyRequest or user from response: $e");
              model = null;
            }
            if (model == null) {
              showSnackBarError(context, R.strings.nullUser);
              logIt.error("A user with error");
            }
          },
        );
      },
      child: BlocBuilder<ReportUserBloc, MutationState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
