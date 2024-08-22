import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
              ),
            ),
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
                            final bloc =
                                BlocProvider.of<AvatarsShopBloc>(context);
                            bloc.add(
                              OnSelectedAvatarEvent(
                                avatarsShopModel,
                                isGrantUserAvatar: false,
                              ),
                            );
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
                            bloc.add(
                              OnSelectedAvatarEvent(
                                avatarsShopModel,
                                isGrantUserAvatar: true,
                              ),
                            );
                          },
                        )
                ],
              ),
            ),
            _buildNewWidget(context),
            _buildPriceWidget(context),
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

  Widget _buildPriceWidget(BuildContext context) {
    if (avatarsShopModel.productId != null &&
        avatarsShopModel.productId!.isNotEmpty) {
      return Positioned(
        top: $constants.insets.xs,
        left: $constants.insets.xs,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: $constants.insets.xxs,
            horizontal: $constants.insets.xs,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular($constants.insets.md),
            color: $constants.palette.black.withOpacity(0.5),
          ),
          child: Text(
            //TODO: wait from BE
            '\$ 7.99',
            style: getTextTheme(context).labelMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      );
    }
    return const SizedBox();
  }
}
