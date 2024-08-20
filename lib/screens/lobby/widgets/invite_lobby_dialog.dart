import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/match/blocs/accept_video_call_bloc.dart';
import 'package:senpai/core/match/blocs/deny_video_call_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/screens/profile/bloc/profile_bloc.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';

import 'invite_lobby_contents.dart';

void showInviteLobbyDialog(BuildContext context, dynamic matchData) {
  showDialog(
    context: context,
    barrierColor: Colors.black.withOpacity(0.7),
    builder: (BuildContext context) {
      return InviteLobbyDialog(
        matchData: matchData,
        child: InviteLobbyContents(
          matchData: matchData,
        ),
      );
    },
  );
}

class InviteLobbyDialog extends StatelessWidget {
  final Widget child;

  final dynamic matchData;

  const InviteLobbyDialog(
      {required this.child, required this.matchData, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => AcceptVideoCallBloc(),
          ),
          BlocProvider(
            create: (_) => DenyVideoCallBloc(),
          ),
          BlocProvider(
            create: (_) => ProfileBloc()
              ..add(
                OnInitUserID(),
              ),
          ),
        ],
        child: BlocListener<DenyVideoCallBloc, MutationState>(
          listener: (context, state) {
            state.whenOrNull(succeeded: (data, result) {
              context.router.pop();
            }, failed: (error, result) {
              showSnackBarError(context, error.graphqlErrors.first.message);
            });
          },
          child: BlocBuilder<AcceptVideoCallBloc, MutationState>(
            builder: (context, state) {
              state.whenOrNull(
                failed: (error, result) {
                  showSnackBarError(context, error.graphqlErrors.first.message);
                },
                succeeded: (data, result) {
                  // we can now pop the dialog and navigate to
                  // This will be handled by the parent screen using a websocket subscription
                  // context.router.pop();
                },
              );
              return Stack(children: [
                BlocBuilder<ProfileBloc, ProfileState>(
                  builder: (context, state) {
                    if (state is LoadingProfileState) {
                      return const SenpaiLoading();
                    }
                    return child;
                  },
                ),
                state.maybeWhen(
                  loading: () => const SenpaiLoading(),
                  orElse: () => const SizedBox.shrink(),
                ),
              ]);
            },
          ),
        ),
      ),
    );
  }
}
