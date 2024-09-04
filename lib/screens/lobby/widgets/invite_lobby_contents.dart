import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/core/match/blocs/accept_video_call_bloc.dart';
import 'package:senpai/core/match/blocs/deny_video_call_bloc.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/aliases.dart';
import 'package:senpai/utils/methods/utils.dart';

class InviteLobbyContents extends StatelessWidget {
  const InviteLobbyContents({required this.matchData, super.key});

  /// This will be passed on from the upper screen context.
  final dynamic matchData;

  @override
  Widget build(BuildContext context) {
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
                      '${matchData["user"]["first_name"]} ${R.strings.invitationPrompt}',
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
                          context.read<AcceptVideoCallBloc>().acceptVideoCall(
                              matchId: matchData["video_chat_request_id"]
                                  .toString());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                $constants.palette.pink,
                                $constants.palette.blue
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(
                              getWidthSize(context, 0.14),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              getWidthSize(context, 0.14),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(
                                    getWidthSize(context, 0.14),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      getWidthSize(context, 0.003)),
                                  child: SizedBox(
                                    height: getWidthSize(context, 0.13),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.phone,
                                          color: Colors.white,
                                          size: getWidthSize(context, 0.056),
                                        ),
                                        SizedBox(
                                            width:
                                                getWidthSize(context, 0.028)),
                                        Text(
                                          R.strings.acceptPromptText,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  getWidthSize(context, 0.0372),
                                              fontWeight: FontWeight.w700),
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
                    SizedBox(width: getWidthSize(context, 0.027)),
                    InkWell(
                      onTap: () {
                        context.read<DenyVideoCallBloc>().denyVideoCall(
                            matchId:
                                matchData["video_chat_request_id"].toString());
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
                                      R.strings.rejectLobbyInvitation,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize:
                                              getWidthSize(context, 0.0372),
                                          fontWeight: FontWeight.w700),
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
  }

  Widget _buildLobbyHeaderText(BuildContext context) {
    logIt.debug('Building lobby header text');

    final user = matchData["user"];

    final photoUrl = user["profile_photo"];
    final userName = user["first_name"];
    final userRating =
        double.tryParse(user["video_call_score"].toString()) ?? 5.0;
    final birthday = DateTime.tryParse(user["birthdate"].toString());
    final userAge = calculateAge(birthday ?? DateTime.now());

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
                  userName ?? R.strings.unknownUserName,
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
