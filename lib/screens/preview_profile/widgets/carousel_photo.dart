import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/preview_profile/bloc/carousel_photo_bloc/carousel_photo_bloc.dart';
import 'package:senpai/screens/preview_profile/widgets/active_status_widget.dart';
import 'package:senpai/screens/profile/widgets/profile_name_header.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class CarouselPhoto extends StatelessWidget {
  final List<String> listImages;
  final bool isShowProfileInfo;
  final String userName;
  final DateTime? birthday;
  final bool isVerified;
  final String? onlineStatus;
  final int? milesAway;
  final bool isAdmin;

  const CarouselPhoto({
    super.key,
    required this.listImages,
    this.isShowProfileInfo = true,
    this.userName = '',
    this.isVerified = false,
    this.birthday,
    this.onlineStatus,
    this.milesAway,
    required this.isAdmin,
  });

  @override
  Widget build(BuildContext context) {
    final width = getSize(context).width - $constants.carousel.marginAmount;
    return BlocProvider(
      create: (_) => CarouselPhotoBloc(),
      child: BlocBuilder<CarouselPhotoBloc, CarouselPhotoState>(
        builder: (context, state) {
          final bloc = BlocProvider.of<CarouselPhotoBloc>(context);

          return Container(
            margin: EdgeInsetsDirectional.symmetric(
              horizontal: isShowProfileInfo ? $constants.insets.sm : 0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                isShowProfileInfo ? $constants.corners.md : 0,
              ),
              shape: BoxShape.rectangle,
            ),
            child: Stack(
              children: [
                PageView.builder(
                  allowImplicitScrolling: true,
                  itemCount: listImages.length,
                  physics: const NeverScrollableScrollPhysics(),
                  controller: bloc.pageController,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        _buildImageItem(listImages[index], context),
                        if (isShowProfileInfo) _buildUserInfo(context),
                      ],
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: listImages.asMap().entries.map((entry) {
                    final itemWidth = width / listImages.length;
                    return GestureDetector(
                      onTap: () => bloc.add(OnTapIndicator(index: entry.key)),
                      behavior: HitTestBehavior.deferToChild,
                      child: _buildIndicatorItem(
                        index: entry.key,
                        width: itemWidth,
                        currentIndex: bloc.currentIndex,
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildImageItem(String item, BuildContext context) {
    final double height = getSize(context).height;
    final bloc = BlocProvider.of<CarouselPhotoBloc>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(
        isShowProfileInfo ? $constants.corners.lg : 0,
      ),
      child: GestureDetector(
        onTapUp: (details) => bloc.add(
            OnTapChangeImage(details: details, maxLenght: listImages.length)),
        child: Image(
          image: NetworkImage(item),
          fit: BoxFit.cover,
          height: height,
          repeat: ImageRepeat.noRepeat,
          errorBuilder: (_, __, ___) {
            return GestureDetector(
              child: const Center(
                child: Icon(Icons.refresh),
              ),
            );
          },
          loadingBuilder: (_, child, loadingProgress) {
            if (loadingProgress == null) return child;

            return Container(
              color: $constants.palette.darkBlue,
              child: SenpaiLoading(
                radius: $constants.corners.md,
              ),
            );
          },
          frameBuilder: (_, child, frame, __) {
            if (frame != null) return child;
            return Container(
              color: $constants.palette.darkBlue,
            );
          },
        ),
      ),
    );
  }

  Widget _buildIndicatorItem({
    required int index,
    required double width,
    required int currentIndex,
  }) {
    return Container(
      margin: EdgeInsets.only(
        top: $constants.insets.sm,
        bottom: $constants.insets.xxs,
        left: $constants.insets.xxs,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular($constants.insets.xxs),
        shape: BoxShape.rectangle,
        color: currentIndex == index
            ? $constants.palette.white
            : $constants.palette.white.withOpacity(0.3),
      ),
      height: $constants.carousel.indicatorHeight,
      width: width - $constants.insets.xxs,
    );
  }

  Widget _buildUserInfo(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(
        top: $constants.carousel.topMargin,
        start: $constants.carousel.startMargin,
      ),
      padding: EdgeInsetsDirectional.symmetric(
        vertical: $constants.insets.xs,
        horizontal: $constants.insets.sm,
      ),
      decoration: BoxDecoration(
        color: $constants.palette.lightBlue,
        borderRadius: BorderRadius.circular($constants.insets.xs),
        shape: BoxShape.rectangle,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileNameHeader(
            name: userName,
            birthday: birthday,
            verified: isVerified,
            isCenter: false,
            birthdayColor: $constants.palette.white.withOpacity(
              0.7,
            ),
            hasBackground: true,
            isAdmin: isAdmin,
          ),
          if (milesAway != null)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  PathConstants.distanceIcon,
                  width: $constants.corners.md,
                  height: $constants.corners.md,
                  colorFilter: ColorFilter.mode(
                    $constants.palette.disabledTextButton,
                    BlendMode.srcIn,
                  ),
                ),
                SizedBox(width: $constants.insets.xxs),
                Text(
                  '$milesAway ${R.strings.milesAwayText}',
                  style: getTextTheme(context).labelMedium?.copyWith(
                        color: $constants.palette.disabledTextButton,
                        letterSpacing: 0,
                      ),
                ),
              ],
            ),
          Padding(
            padding: const EdgeInsets.only(left: 2.0),
            child: ActiveStatusWidget(activeStatus: onlineStatus),
          ),
        ],
      ),
    );
  }
}
