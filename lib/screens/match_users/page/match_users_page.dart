import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/chat/blocs/send_message_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/dependency_injection/injection.dart';

import 'package:senpai/models/match/like_user_model/like_user_model.dart';

import 'package:senpai/screens/match_users/bloc/match_users_bloc.dart';
import 'package:senpai/screens/match_users/widgets/match_users_content.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

@RoutePage()
class MatchUsersPage extends StatelessWidget {
  final LikeUserModel likeUserModel;
  const MatchUsersPage({super.key, required this.likeUserModel});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => MatchUsersBloc()
              ..add(OnMatchUsersInitEvent(likeUserModel: likeUserModel))),
        BlocProvider.value(value: getIt<SendMessageBloc>()),
      ],
      child: Scaffold(
        backgroundColor: $constants.palette.darkBlue,
        body: SafeArea(
          top: false,
          child: Stack(
            children: [
              const MatchUsersContent(),
              _buildSendMessageBlocListeners(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSendMessageBlocListeners() {
    return BlocBuilder<SendMessageBloc, MutationState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            failed: (error, result) {
              showSnackBarError(context, R.strings.serverError);
              return const SizedBox.shrink();
            },
            succeeded: (data, result) {
              final response = result.data;

              if (response == null) {
                // handle this fatal error
                logIt.wtf("A successful empty response just got set user");
                return const SizedBox.shrink();
              }
              final model = response["sendMessage"]["message"];
              if (model == null) {
                showSnackBarError(context, R.strings.nullUser);
                logIt.error("A user with error");
                return const SizedBox.shrink();
              } else {
                final bloc = BlocProvider.of<MatchUsersBloc>(context);
                context.router.pop(bloc.likeUserModel.match?.matchee);
              }

              return const SizedBox.shrink();
            },
            orElse: () => const SizedBox.shrink());
      },
    );
  }
}
