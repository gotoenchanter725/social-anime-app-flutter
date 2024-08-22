import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/models/avatar_shop/avatar_shop_model.dart';
import 'package:senpai/utils/methods/utils.dart';

class SettingsAvatarCardItem extends StatelessWidget {
  const SettingsAvatarCardItem(
      {super.key, required this.data, required this.selected});

  final AvatarsShopModel data;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: getWidthSize(context, 0.117)),
          child: Container(
            decoration: selected
                ? BoxDecoration(
                    border: Border.all(
                      color: Colors.yellow, // Border color
                      width: 1, // Border width
                    ),
                    borderRadius: BorderRadius.circular(20),
                  )
                : null, // No border if not selected
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                data.photoUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: getWidthSize(context, 0.026),
          right: getWidthSize(context, 0.026),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: getWidthSize(context, 0.112),
                height: getWidthSize(context, 0.112),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(data.thumbnailUrl),
                  radius: getWidthSize(context, 0.112),
                ),
              ),
              SizedBox(height: getWidthSize(context, 0.015)),
              Text(
                data.name,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: getWidthSize(context, 0.023),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        if (data.isDefault)
          Positioned(
            top: getWidthSize(context, 0.013),
            left: getWidthSize(context, 0.013),
            child: Container(
              width: getWidthSize(context, 0.053),
              height: getWidthSize(context, 0.053),
              decoration: const BoxDecoration(
                  color: Colors.black, shape: BoxShape.circle),
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: SvgPicture.asset(PathConstants.crownGoldIcon),
              ),
            ),
          ),
      ],
    );
  }
}
