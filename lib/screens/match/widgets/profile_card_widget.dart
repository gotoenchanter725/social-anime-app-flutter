import 'package:flutter/material.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';
import 'package:senpai/screens/preview_profile/widgets/carousel_photo.dart';
import 'package:senpai/utils/methods/utils.dart';

class ProfileCard extends StatelessWidget {
  final UserProfileModel user;

  const ProfileCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> listImages = [];
    if (user.gallery != null && user.gallery!.photos.isNotEmpty) {
      listImages = user.gallery!.photos.map((e) => e.url ?? '').toList();
    }
    return SafeArea(
      child: SizedBox(
        height: getSize(context).height,
        width: getSize(context).width,
        child: CarouselPhoto(
          listImages: listImages,
          userName: user.firstName ?? '',
          isVerified: user.verified,
          birthday: user.birthday,
          onlineStatus: user.onlineStatus,
          milesAway: user.hasLocationHidden == true ? null : user.milesAway,
        ),
      ),
    );
  }
}
