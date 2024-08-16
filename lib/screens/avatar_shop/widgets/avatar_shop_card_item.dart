import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/gradient_filled_button.dart';
import 'package:senpai/core/widgets/gradient_outlined_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

import 'avatar_shop_unlock_premium_dialog.dart';

class AvatarShopCardItem extends StatelessWidget {
  const AvatarShopCardItem({super.key, required this.data});

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Image.network(
              data["image"],
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Image.asset(
                  PathConstants.avatarShopItemOverlay,
                  fit: BoxFit.cover,
                )),
            Positioned(
              bottom: getWidthSize(context, 0.02),
              left: getWidthSize(context, 0.026),
              right: getWidthSize(context, 0.026),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: getWidthSize(context, 0.176),
                    height: getWidthSize(context, 0.176),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(data["profile"]),
                      radius: getWidthSize(context, 0.176),
                    ),
                  ),
                  SizedBox(height: getWidthSize(context, 0.015)),
                  Text(
                    data["name"],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: getWidthSize(context, 0.032),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: getWidthSize(context, 0.02)),
                  data["status"] == "Emote"
                      ? GradientOutlinedButton(
                          title: "Emote",
                          height: getWidthSize(context, 0.08),
                          borderRadius: getWidthSize(context, 0.026),
                          startColor: $constants.palette.emoteButtonStart,
                          endColor: $constants.palette.emoteButtonEnd,
                          onPressed: () {})
                      : data["status"] == "Buy"
                          ? GradientFilledButton(
                              title: data["product_id"] != null
                                  ? "Buy"
                                  : "Download",
                              startColor: $constants.palette.buyButtonStart,
                              endColor: $constants.palette.buyButtonEnd,
                              height: getWidthSize(context, 0.08) + 2,
                              borderRadius: getWidthSize(context, 0.026),
                              onPressed: () {})
                          : data["status"] == "Premium"
                              ? GradientFilledButton(
                                  title: "Premium",
                                  height: getWidthSize(context, 0.08) + 2,
                                  borderRadius: getWidthSize(context, 0.026),
                                  trailingIconPath: PathConstants.crownIcon,
                                  onPressed: () {
                                    showAvatarShopUnlockPremiumDialog(context);
                                  })
                              : GradientFilledButton(
                                  title: data["status"],
                                  height: getWidthSize(context, 0.08) + 2,
                                  borderRadius: getWidthSize(context, 0.026),
                                  onPressed: () {})
                ],
              ),
            ),
            if (data["isNew"])
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset(
                  PathConstants.newTag,
                  fit: BoxFit.fill,
                  width: getWidthSize(context, 0.157),
                  height: getWidthSize(context, 0.0527),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
