import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.graphql.dart';
import 'package:senpai/core/match/blocs/send_video_chat_request_bloc.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/screens/lobby/bloc/invite_video_chat_cubit.dart';
import 'package:senpai/screens/profile/bloc/profile_bloc.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class _GradientColor {
  final Color startColor;
  final Color endColor;

  _GradientColor(this.startColor, this.endColor);
}

class InviteLobbyContents extends StatelessWidget {
  const InviteLobbyContents({required this.matchData, super.key});

  /// This will be passed on from the upper screen context.
  final dynamic matchData;

  _GradientColor _getStatusColors(InviteToVideoChatState status) {
    if (status == InviteToVideoChatState.initial) {
      return _GradientColor($constants.palette.pink, $constants.palette.blue);
    }
    if (status == InviteToVideoChatState.pending) {
      return _GradientColor($constants.palette.yellowButtonEnd,
          $constants.palette.yellowButtonStart);
    }
    if (status == InviteToVideoChatState.success) {
      return _GradientColor(
          $constants.palette.warmButtonStart, $constants.palette.warmButtonEnd);
    }
    return _GradientColor($constants.palette.redButton, $constants.palette.red);
  }

  Widget _getLeadingIcon(BuildContext context, InviteToVideoChatState status) {
    if (status == InviteToVideoChatState.initial) {
      return Icon(
        Icons.phone,
        color: Colors.white,
        size: getWidthSize(context, 0.056),
      );
    }
    if (status == InviteToVideoChatState.pending) {
      return SizedBox(
          width: getWidthSize(context, 0.056),
          height: getWidthSize(context, 0.056),
          child: Center(
              child: CircularProgressIndicator(
            strokeWidth: 2,
            color: Colors.white,
            backgroundColor: Colors.white.withOpacity(0.37),
          )));
    }
    if (status == InviteToVideoChatState.success) {
      return SvgPicture.asset(
        PathConstants.phoneColored, // replace with your icon path
        width: getWidthSize(context, 0.056),
        height: getWidthSize(context, 0.056),
      );
    }
    return SvgPicture.asset(
      PathConstants.failed, // replace with your icon path
      width: getWidthSize(context, 0.056),
      height: getWidthSize(context, 0.056),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InviteToVideoChatCubit, InviteToVideoChatState>(
      builder: (context, state) {
        final buttonGradientColors = _getStatusColors(state);
        return Padding(
          padding: EdgeInsets.only(
              left: getWidthSize(context, 0.037),
              right: getWidthSize(context, 0.037)),
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: getWidthSize(context, 0.068),
                    left: getWidthSize(context, 0.042),
                    right: getWidthSize(context, 0.042)),
                height: getWidthSize(context, 0.926 * 463 / 686),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(PathConstants.inviteAcceptBackground),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildLobbyHeaderText(context),
                    SizedBox(height: getWidthSize(context, 0.04)),
                    const Divider(color: Color(0xff58595E)),
                    Expanded(
                      child: Center(
                        child: Text(
                          'Kitniss has sent you a video chat invitation!',
                          style: TextStyle(
                              color: $constants.palette.grey,
                              fontSize: getWidthSize(context, 0.0372),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              final currentDialogState =
                                  context.read<InviteToVideoChatCubit>().state;
                              if (currentDialogState !=
                                  InviteToVideoChatState.initial) {
                                return;
                              }
                              final data =
                                  matchData as FindVideoChatMatch$Mutation;
                              final id =
                                  data.findVideoChatMatch?.user?.id ?? '';
                              final userId = context.read<ProfileBloc>().userID;
                              context
                                  .read<SendVideoChatRequestBloc>()
                                  .sendVideoChatRequest(
                                      userId: userId, matcheeId: id);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    buttonGradientColors.startColor,
                                    buttonGradientColors.endColor,
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(
                                    getWidthSize(context, 0.14)),
                              ),
                              child: BlocListener<SendVideoChatRequestBloc,
                                  MutationState>(
                                listener: (context, state) {
                                  state.whenOrNull(
                                    succeeded: (data, result) {
                                      context
                                          .read<InviteToVideoChatCubit>()
                                          .setSuccess();
                                    },
                                    loading: () {
                                      context
                                          .read<InviteToVideoChatCubit>()
                                          .setPending();
                                    },
                                    failed: (error, result) {
                                      context
                                          .read<InviteToVideoChatCubit>()
                                          .setFailed();
                                    },
                                  );
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      getWidthSize(context, 0.14)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(1),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(
                                              getWidthSize(context, 0.14))),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            getWidthSize(context, 0.003)),
                                        child: SizedBox(
                                          height: getWidthSize(context, 0.13),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              _getLeadingIcon(context, state),
                                              SizedBox(
                                                  width: getWidthSize(
                                                      context, 0.028)),
                                              Text(
                                                'Accept',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: getWidthSize(
                                                        context, 0.0372),
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: getWidthSize(context, 0.027)),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  $constants.palette.redButton,
                                  $constants.palette.red,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(
                                  getWidthSize(context, 0.14)),
                            ),
                            child: BlocListener<SendVideoChatRequestBloc,
                                MutationState>(
                              listener: (context, state) {
                                state.whenOrNull(
                                  succeeded: (data, result) {
                                    context
                                        .read<InviteToVideoChatCubit>()
                                        .setSuccess();
                                  },
                                  loading: () {
                                    context
                                        .read<InviteToVideoChatCubit>()
                                        .setPending();
                                  },
                                  failed: (error, result) {
                                    context
                                        .read<InviteToVideoChatCubit>()
                                        .setFailed();
                                  },
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    getWidthSize(context, 0.14)),
                                child: Padding(
                                  padding: const EdgeInsets.all(1),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(
                                            getWidthSize(context, 0.14))),
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                          getWidthSize(context, 0.003)),
                                      child: SizedBox(
                                        height: getWidthSize(context, 0.13),
                                        width: getWidthSize(context, 0.253),
                                        child: Center(
                                          child: Text(
                                            'Reject',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: getWidthSize(
                                                    context, 0.0372),
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: getWidthSize(context, 0.04)),
                  ],
                ),
              ),
              Positioned(
                top: getWidthSize(context, 0.025),
                right: getWidthSize(context, 0.04),
                child: SvgPicture.asset(
                  PathConstants.lobbyInvite,
                  width: getWidthSize(context, 0.1),
                  height: getWidthSize(context, 0.1),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildLobbyHeaderText(BuildContext context) {
    final data = matchData as FindVideoChatMatch$Mutation?;
    final user = data?.findVideoChatMatch?.user;
    final photoUrl = user?.gallery!.photos![0].url;
    final userName = user?.firstName;
    final userRating = user?.videoCallScore ?? 0.0;

    final userAge = calculateAge(user?.birthday ?? DateTime.now());

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: getWidthSize(context, 0.153),
          height: getWidthSize(context, 0.153),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 2.0,
            ),
          ),
          child: CircleAvatar(
            radius: getWidthSize(context, 0.05),
            backgroundImage: NetworkImage(
                photoUrl ?? 'https://aniu.ru/avatars/no_avatar.png'),
          ),
        ),
        SizedBox(width: getWidthSize(context, 0.05)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  userName ?? 'Unknown',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getWidthSize(context, 0.07),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: getWidthSize(context, 0.03)),
                Text(
                  userAge,
                  style: TextStyle(
                    color: $constants.palette.grey,
                    fontSize: getWidthSize(context, 0.06),
                  ),
                )
              ],
            ),
            RatingBar.builder(
              initialRating: userRating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(
                  horizontal: getWidthSize(context, 0.0012)),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              itemSize: getWidthSize(context, 0.04),
              ignoreGestures: true,
              onRatingUpdate: (_) {},
            )
          ],
        ),
      ],
    );
  }
}
