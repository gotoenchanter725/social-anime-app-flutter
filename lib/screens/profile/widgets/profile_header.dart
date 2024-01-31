import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/user_avator.dart';
import 'package:senpai/screens/profile/widgets/profile_name_header.dart';
import 'package:senpai/utils/constants.dart';

class ProfileHeader extends StatelessWidget {
  final String avatar;
  final String name;
  final DateTime? birthday;
  final bool verified;
  final bool isAdmin;

  const ProfileHeader({
    super.key,
    required this.avatar,
    required this.name,
    this.birthday,
    required this.verified,
    required this.isAdmin,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildTitle(),
        if (avatar.isNotEmpty)
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: $constants.palette.appBackground,
                width: 2.0,
              ),
            ),
            child: UserAvatar(
              imageUrl: avatar,
              size: 96.0,
            ),
          ),
      ],
    );
  }

  Widget _buildTitle() {
    return Container(
      margin: EdgeInsets.only(top: $constants.insets.xl),
      padding: EdgeInsets.only(
        top: $constants.insets.xxl,
        left: $constants.insets.sm,
        bottom: $constants.insets.sm,
        right: $constants.insets.sm,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular($constants.corners.lg),
        shape: BoxShape.rectangle,
        color: $constants.palette.lightBlue,
      ),
      child: ProfileNameHeader(
        name: name,
        birthday: birthday,
        verified: verified,
        isAdmin: isAdmin,
      ),
    );
  }
}
