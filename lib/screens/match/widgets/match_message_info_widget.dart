import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/user_avator.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class MatchMessageInfoWidget extends StatelessWidget {
  final UserProfileModel user;

  const MatchMessageInfoWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> listImages = [];
    if (user.gallery != null && user.gallery!.photos.isNotEmpty) {
      listImages = user.gallery!.photos.map((e) => e.url ?? '').toList();
    }
    return Container(
      height: $constants.insets.xxl,
      decoration: BoxDecoration(
        color: $constants.palette.buttonBorder,
        borderRadius: BorderRadius.circular($constants.corners.md),
        shape: BoxShape.rectangle,
      ),
      padding: EdgeInsets.all($constants.insets.xs),
      margin: EdgeInsets.symmetric(horizontal: $constants.insets.md),
      child: Row(
        children: [
          UserAvatar(
            imageUrl: listImages.first,
            size: $constants.insets.xl,
          ),
          SizedBox(width: $constants.insets.xs),
          Flexible(
            child: _buildContent(context),
          )
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          TextConstants.successText,
          style: getTextTheme(context).bodySmall?.copyWith(
                letterSpacing: 0,
                fontWeight: FontWeight.w600,
              ),
        ),
        Text(
          "${TextConstants.messageToText} ${user.firstName} ${TextConstants.sentText}",
          style: getTextTheme(context).bodySmall?.copyWith(letterSpacing: 0),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
