import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:senpai/core/widgets/icon_button.dart';
import 'package:senpai/core/widgets/senpai_app_bar.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/aliases.dart';
import 'package:senpai/utils/methods/utils.dart';

void showVideoRequestDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierColor: Colors.transparent,
    useSafeArea: false,
    builder: (BuildContext context) {
      return const VideoRequestDialog(child: VideoRequestContents());
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
        title: "Video Request",
        hasLeading: true,
        actions: [
          SenpaiIconButton(
            onPressed: () {},
            iconPath: PathConstants.settingsOutlinedIcon,
          )
        ],
      ),
      body: SafeArea(
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
                Expanded(
                  child: Center(
                    child: child,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                      bottom: 20,
                      left: getWidthSize(context, 0.08),
                      right: getWidthSize(context, 0.08),
                    ),
                    child: InkWell(
                      onTap: () {
                        appRouter.pop();
                      },
                      child: Container(
                        height: getWidthSize(context, 0.13),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            getWidthSize(context, 0.17),
                          ),
                          border: Border.all(
                              color: Colors.white.withOpacity(0.59), width: 1),
                        ),
                        child: Center(
                          child: Text(
                            "Back to the Pool",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: getWidthSize(context, 0.0372),
                            ),
                          ),
                        ),
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class VideoRequestContents extends StatefulWidget {
  const VideoRequestContents({super.key});

  @override
  State<VideoRequestContents> createState() => _VideoRequestContentsState();
}

class _VideoRequestContentsState extends State<VideoRequestContents> {
  int status =
      0; // 0 - send invite, 1 - sending invite, 2 - invited, 3 - failed
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
            height: getWidthSize(context, 0.926 * 406 / 686),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(PathConstants.inviteBackground),
                fit: BoxFit.contain,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildLobbyHeaderText(context),
                SizedBox(height: getWidthSize(context, 0.13)),
                InkWell(
                  onTap: () {
                    // if(status == 2)
                    // appRouter.replace(UnityViewRoute());
                    if (status == 0) {
                      setState(() {
                        status = 1;
                      });
                      Future.delayed(const Duration(seconds: 3), () {
                        setState(() {
                          status = 2;
                        });
                      });
                    }
                    if (status == 2 || status == 3) {
                      setState(() {
                        status = (status + 1) % 4;
                      });
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          status == 0
                              ? $constants.palette.pink
                              : status == 1
                                  ? $constants.palette.yellowButtonEnd
                                  : status == 2
                                      ? $constants.palette.warmButtonStart
                                      : $constants.palette.redButton,
                          status == 0
                              ? $constants.palette.blue
                              : status == 1
                                  ? $constants.palette.yellowButtonStart
                                  : status == 2
                                      ? $constants.palette.warmButtonEnd
                                      : $constants.palette.red
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius:
                          BorderRadius.circular(getWidthSize(context, 0.14)),
                    ),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(getWidthSize(context, 0.14)),
                      child: Padding(
                        padding: const EdgeInsets.all(1),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(
                                  getWidthSize(context, 0.14))),
                          child: Padding(
                            padding:
                                EdgeInsets.all(getWidthSize(context, 0.003)),
                            child: SizedBox(
                              height: getWidthSize(context, 0.13),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (status == 0)
                                    Icon(
                                      Icons.phone,
                                      color: Colors.white,
                                      size: getWidthSize(context, 0.056),
                                    ),
                                  if (status == 1)
                                    SizedBox(
                                        width: getWidthSize(context, 0.056),
                                        height: getWidthSize(context, 0.056),
                                        child: Center(
                                            child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                          color: Colors.white,
                                          backgroundColor:
                                              Colors.white.withOpacity(0.37),
                                        ))),
                                  if (status == 2)
                                    SvgPicture.asset(
                                      PathConstants
                                          .phoneColored, // replace with your icon path
                                      width: getWidthSize(context, 0.056),
                                      height: getWidthSize(context, 0.056),
                                    ),
                                  if (status == 3)
                                    SvgPicture.asset(
                                      PathConstants
                                          .failed, // replace with your icon path
                                      width: getWidthSize(context, 0.056),
                                      height: getWidthSize(context, 0.056),
                                    ),
                                  SizedBox(width: getWidthSize(context, 0.028)),
                                  Text(
                                    status == 0
                                        ? 'Invite to Chat'
                                        : status == 1
                                            ? 'Inviting ...'
                                            : status == 2
                                                ? 'Invited'
                                                : 'Failed',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: getWidthSize(context, 0.0372),
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
                )
              ],
            ),
          ),
          Positioned(
            top: getWidthSize(context, 0.025),
            right: getWidthSize(context, 0.04),
            child: SvgPicture.asset(
              PathConstants.lobbyInvite, // replace with your icon path
              width: getWidthSize(context, 0.1),
              height: getWidthSize(context, 0.1),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLobbyHeaderText(BuildContext context) {
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
            backgroundImage: const NetworkImage(
                "https://th.bing.com/th/id/R.2c49c9cf2c5248cf4f5e8661b8d3af4f?rik=G8yDhr4srExPpQ&pid=ImgRaw&r=0"),
          ),
        ),
        SizedBox(width: getWidthSize(context, 0.05)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getWidthSize(context, 0.02)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Miyu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getWidthSize(context, 0.07),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: getWidthSize(context, 0.03)),
                Text(
                  '24',
                  style: TextStyle(
                    color: $constants.palette.grey,
                    fontSize: getWidthSize(context, 0.06),
                  ),
                )
              ],
            ),
            RatingBar.builder(
              initialRating: 4,
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
