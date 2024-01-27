import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/user_avator.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/models/chat/chat_room_params.dart';
import 'package:senpai/models/report_user/report_user_params.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class PopUpMenuWidget extends StatelessWidget {
  const PopUpMenuWidget({
    super.key,
    required this.currentUserId,
    required this.receipientUser,
    required this.roomId,
  });

  final User receipientUser;
  final String currentUserId;
  final String roomId;

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      alignmentOffset: Offset(-$constants.insets.xxl, 0),
      style: MenuStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
      builder: (_, MenuController controller, __) {
        return GestureDetector(
          onTap: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
          child: UserAvatar(
            imageUrl: receipientUser.profileUrl,
            size: 40.0,
          ),
        );
      },
      menuChildren: [
        _buildMenuItemButton(
          context,
          onPressed: () async {
            await context.router.push(
              PreviewProfileRoute(
                userId: currentUserId,
                vieweeId: receipientUser.id,
              ),
            );
          },
          title: TextConstants.viewProfileText,
        ),
        Divider(
          height: 0,
          color: $constants.palette.darkGrey,
        ),
        _buildMenuItemButton(
          context,
          onPressed: () {},
          title: TextConstants.unmatchText,
        ),
        Divider(
          height: 0,
          color: $constants.palette.darkGrey,
        ),
        _buildMenuItemButton(
          context,
          onPressed: () async {
            await context.router.push(
              ReportUserRoute(
                reportArgs: ReportUserParams(
                  roomId: roomId,
                  currentUserId: currentUserId,
                  reciepientId: receipientUser.id,
                ),
              ),
            );
          },
          title: TextConstants.reportText,
        ),
      ],
    );
  }

  Widget _buildMenuItemButton(
    BuildContext context, {
    required VoidCallback onPressed,
    required String title,
  }) {
    return MenuItemButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: getTextTheme(context).bodySmall!.copyWith(
              letterSpacing: 0.5,
            ),
      ),
    );
  }
}
