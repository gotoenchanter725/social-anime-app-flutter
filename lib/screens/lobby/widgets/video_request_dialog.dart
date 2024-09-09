import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/match/blocs/send_video_chat_request_bloc.dart';
import 'package:senpai/core/match/blocs/stop_video_match_bloc.dart';
import 'package:senpai/core/widgets/icon_button.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/core/widgets/senpai_app_bar.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/lobby/bloc/invite_video_chat_cubit.dart';
import 'package:senpai/screens/lobby/widgets/video_request_contents.dart';
import 'package:senpai/screens/profile/bloc/profile_bloc.dart';
import 'package:senpai/utils/methods/utils.dart';

void showVideoRequestDialog(BuildContext context, dynamic matchData) {
  showDialog(
    context: context,
    barrierColor: Colors.transparent,
    useSafeArea: false,
    builder: (BuildContext context) {
      return VideoRequestDialog(
        child: VideoRequestContents(
          matchData: matchData,
        ),
      );
    },
  );
}

class VideoRequestDialog extends StatelessWidget {
  final Widget child;

  const VideoRequestDialog({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: SenpaiAppBar(
        title: R.strings.videoChatDialogScreenTitle,
        hasLeading: false,
        actions: [
          SenpaiIconButton(
            onPressed: () {},
            iconPath: PathConstants.settingsOutlinedIcon,
          )
        ],
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => InviteToVideoChatCubit(),
          ),
          BlocProvider(create: (context) => SendVideoChatRequestBloc()),
          BlocProvider(
            create: (_) => ProfileBloc()
              ..add(
                OnInitUserID(),
              ),
          ),
          BlocProvider(
            create: (_) => StopVideoMatchBloc(),
          ),
        ],
        child: SafeArea(
          child: Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 50, sigmaY: 70),
                child: Container(
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
              Column(
                children: [
                  BlocBuilder<ProfileBloc, ProfileState>(
                    builder: (context, state) {
                      if (state is LoadingProfileState) {
                        return const SenpaiLoading();
                      }

                      return Expanded(
                        child: Center(
                          child: child,
                        ),
                      );
                    },
                  ),
                  BlocBuilder<InviteToVideoChatCubit, InviteToVideoChatState>(
                    builder: (context, state) {
                      if (state == InviteToVideoChatState.success) {
                        return const SizedBox.shrink();
                      }

                      return Padding(
                          padding: EdgeInsets.only(
                            bottom: 20,
                            left: getWidthSize(context, 0.08),
                            right: getWidthSize(context, 0.08),
                          ),
                          child: InkWell(
                            onTap: () {
                              final userId =
                                  (context.read<ProfileBloc>().userID);
                              context
                                  .read<StopVideoMatchBloc>()
                                  .stopVideoMatch(userId);
                            },
                            child: Container(
                              height: getWidthSize(context, 0.13),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  getWidthSize(context, 0.17),
                                ),
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.59),
                                    width: 1),
                              ),
                              child: Center(
                                child: Text(
                                  R.strings.backToPool,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: getWidthSize(context, 0.0372),
                                  ),
                                ),
                              ),
                            ),
                          ));
                    },
                  )
                ],
              ),
              _buildStopMatchingListeners(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStopMatchingListeners(BuildContext context) {
    return BlocBuilder<StopVideoMatchBloc, MutationState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
          orElse: () {
            return const SizedBox.shrink();
          },
          succeeded: (data, result) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              context.router.replaceAll([HomeRoute()]);
            });
            return const SizedBox.shrink();
          },
          loading: () {
            return const SenpaiLoading();
          },
        );
      },
    );
  }
}
