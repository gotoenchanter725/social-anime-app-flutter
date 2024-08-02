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
                color: Colors.black.withOpacity(0.2),
              ),
            ),
            Center(
              child: child,
            ),
            Positioned(
                bottom: 20,
                left: getWidthSize(context, 0.08),
                right: getWidthSize(context, 0.08),
                child: InkWell(
                  onTap: () {
                    appRouter.pop();
                  },
                  child: Container(
                    height: getWidthSize(context, 0.17),
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
        ),
      ),
    );
  }
}

class VideoRequestContents extends StatelessWidget {
  const VideoRequestContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: getWidthSize(context, 0.037),
          right: getWidthSize(context, 0.037)),
      child: InkWell(
        onTap: () {
          appRouter.replace(UnityViewRoute());
        },
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: getWidthSize(context, 0.058),
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
                  SizedBox(height: getWidthSize(context, 0.095)),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          $constants.palette.pink,
                          $constants.palette.blue
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
                                EdgeInsets.all(getWidthSize(context, 0.018)),
                            child: SizedBox(
                              height: getWidthSize(context, 0.13),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                    size: getWidthSize(context, 0.056),
                                  ),
                                  SizedBox(width: getWidthSize(context, 0.028)),
                                  Text(
                                    'Invite to Chat',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: getWidthSize(context, 0.0372),
                                    ),
                                  ),
                                ],
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
