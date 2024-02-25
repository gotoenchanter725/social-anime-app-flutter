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
    return BlocListener<SendMessageBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(
          failed: (error, result) {
            showSnackBarError(context, R.strings.serverError);
          },
          succeeded: (data, result) {
            final response = result.data;
            if (response == null) {
              logIt.wtf("A successful empty response just got recorded");
              return;
            }
            dynamic model;
            try {
              model = response["sendMessage"]["message"];
              final bloc = BlocProvider.of<MatchUsersBloc>(context);
              context.router.pop(bloc.likeUserModel.match?.matchee);
            } catch (e) {
              logIt.error(
                  "Error accessing sendMessage or message from response: $e");
              model = null;
            }
            if (model == null) {
              showSnackBarError(context, R.strings.nullUser);
              logIt.error("A user with error");
            }
          },
        );
      },
      child: BlocBuilder<SendMessageBloc, MutationState>(
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
