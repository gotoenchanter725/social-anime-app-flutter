import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/avatar_shop/blocs/grant_user_avatar_bloc.dart';
import 'package:senpai/core/widgets/gradient_filled_button.dart';
import 'package:senpai/core/widgets/gradient_outlined_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/models/avatar_shop/avatar_shop_model.dart';
import 'package:senpai/screens/avatar_shop/bloc/avatar_shop_bloc.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class AvatarShopCardItem extends StatelessWidget {
  const AvatarShopCardItem({
    super.key,
    required this.avatarsShopModel,
  });

  final AvatarsShopModel avatarsShopModel;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Image.network(
              avatarsShopModel.photoUrl,
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
                      backgroundImage: NetworkImage(
                        avatarsShopModel.thumbnailUrl,
                      ),
                      radius: getWidthSize(context, 0.176),
                    ),
                  ),
                  SizedBox(height: getWidthSize(context, 0.015)),
                  Text(
                    avatarsShopModel.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: getWidthSize(context, 0.032),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: getWidthSize(context, 0.02)),
                  avatarsShopModel.productId != null &&
                          avatarsShopModel.productId!.isNotEmpty
                      ? GradientFilledButton(
                          //TODO: add to localization
                          title: "Buy",
                          startColor: $constants.palette.buyButtonStart,
                          endColor: $constants.palette.buyButtonEnd,
                          height: getWidthSize(context, 0.08) + 2,
                          borderRadius: getWidthSize(context, 0.026),
                          onPressed: () {
                            print('Buy');
                          },
                        )
                      : GradientOutlinedButton(
                          //TODO: add to localization
                          title: "Download",
                          height: getWidthSize(context, 0.08),
                          borderRadius: getWidthSize(context, 0.026),
                          startColor: $constants.palette.emoteButtonStart,
                          endColor: $constants.palette.emoteButtonEnd,
                          onPressed: () {
                            final bloc =
                                BlocProvider.of<AvatarsShopBloc>(context);
                            final serviceBloc =
                                BlocProvider.of<GrantUserAvatarBloc>(context);
                            serviceBloc.grantUserAvatar(
                              userId: bloc.userID,
                              avatarGuid: avatarsShopModel.guid,
                            );
                          },
                        )
                  //TODO: delete it after add Premium Button

                  // data["status"] == "Emote"
                  //     ? GradientOutlinedButton(
                  //         title: "Emote",
                  //         height: getWidthSize(context, 0.08),
                  //         borderRadius: getWidthSize(context, 0.026),
                  //         startColor: $constants.palette.emoteButtonStart,
                  //         endColor: $constants.palette.emoteButtonEnd,
                  //         onPressed: () {},
                  //       )
                  //     : data["status"] == "Buy"
                  //         ? GradientFilledButton(
                  //             title: data["product_id"] != null
                  //                 ? "Buy"
                  //                 : "Download",
                  //             startColor: $constants.palette.buyButtonStart,
                  //             endColor: $constants.palette.buyButtonEnd,
                  //             height: getWidthSize(context, 0.08) + 2,
                  //             borderRadius: getWidthSize(context, 0.026),
                  //             onPressed: () {},
                  //           )
                  //         : data["status"] == "Premium"
                  //             ? GradientFilledButton(
                  //                 title: "Premium",
                  //                 height: getWidthSize(context, 0.08) + 2,
                  //                 borderRadius: getWidthSize(context, 0.026),
                  //                 trailingIconPath: PathConstants.crownIcon,
                  //                 onPressed: () {
                  //                   showAvatarShopUnlockPremiumDialog(context);
                  //                 })
                  //             : GradientFilledButton(
                  //                 title: data["status"],
                  //                 height: getWidthSize(context, 0.08) + 2,
                  //                 borderRadius: getWidthSize(context, 0.026),
                  //                 onPressed: () {},
                  //               )
                ],
              ),
            ),
            _buildNewWidget(context),
          ],
        ),
      ),
    );
  }

  Widget _buildNewWidget(BuildContext context) {
    final beforeDate = DateTime.now().copyWith(day: DateTime.now().day - 30);
    bool isNew = avatarsShopModel.createdAt != null &&
        avatarsShopModel.createdAt!.isAfter(beforeDate);

    if (isNew) {
      return Positioned(
        top: 0,
        right: 0,
        child: Image.asset(
          PathConstants.newTag,
          fit: BoxFit.fill,
          width: getWidthSize(context, 0.157),
          height: getWidthSize(context, 0.0527),
        ),
      );
    }
    return const SizedBox();
  }
}
