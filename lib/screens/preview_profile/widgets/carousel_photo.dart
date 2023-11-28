import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/screens/preview_profile/widgets/active_status_widget.dart';
import 'package:senpai/screens/profile/widgets/profile_name_header.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class CarouselPhoto extends StatefulWidget {
  final List<String> listImages;
  final bool isShowProfileInfo;
  final String userName;
  final DateTime? birthday;
  final bool isVerified;
  final String? onlineStatus;

  const CarouselPhoto({
    super.key,
    required this.listImages,
    this.isShowProfileInfo = true,
    this.userName = '',
    this.isVerified = false,
    this.birthday,
    this.onlineStatus,
  });

  @override
  State<CarouselPhoto> createState() => _CarouselPhotoState();
}

class _CarouselPhotoState extends State<CarouselPhoto> {
  final PageController _pageController = PageController(keepPage: false);

  final ValueNotifier<int> _currentIndex = ValueNotifier(0);

  void _onTapUp(TapUpDetails details, int current) {
    if (details.localPosition.direction > 1.0 && current != 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    }
    if (details.localPosition.direction < 1.0 &&
        current < widget.listImages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    }
  }

  void _onTapIndicator(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(
        horizontal: widget.isShowProfileInfo ? 16 : 0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          widget.isShowProfileInfo ? $constants.corners.md : 0,
        ),
        shape: BoxShape.rectangle,
      ),
      child: Stack(
        children: [
          PageView.builder(
            allowImplicitScrolling: true,
            itemCount: widget.listImages.length,
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            onPageChanged: (index) => _currentIndex.value = index,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  _buildImageItem(widget.listImages[index]),
                  if (widget.isShowProfileInfo) _buildUserInfo(),
                ],
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.listImages.asMap().entries.map((entry) {
              final itemWidth =
                  (getSize(context).width - 64) / widget.listImages.length;
              return GestureDetector(
                onTap: () => _onTapIndicator(entry.key),
                behavior: HitTestBehavior.deferToChild,
                child: _buildIndicatorItem(entry.key, itemWidth),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildImageItem(String item) {
    final double height = getSize(context).height;

    return ValueListenableBuilder(
      valueListenable: _currentIndex,
      builder: (context, current, _) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(
            widget.isShowProfileInfo ? $constants.corners.lg : 0,
          ),
          child: GestureDetector(
            onTapUp: (details) => _onTapUp(details, current),
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
      },
    );
  }

  Widget _buildIndicatorItem(int index, double width) {
    return ValueListenableBuilder(
      valueListenable: _currentIndex,
      builder: (context, current, _) {
        return Container(
          margin: EdgeInsets.only(
            top: $constants.insets.sm,
            bottom: $constants.insets.xxs,
            left: $constants.insets.xxs,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular($constants.insets.xxs),
            shape: BoxShape.rectangle,
            color: current == index
                ? $constants.palette.white
                : $constants.palette.white.withOpacity(0.3),
          ),
          height: 2,
          width: width - 4,
        );
      },
    );
  }

  Widget _buildUserInfo() {
    return Container(
      margin: const EdgeInsetsDirectional.only(top: 34, start: 20),
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
            name: widget.userName,
            birthday: widget.birthday,
            verified: widget.isVerified,
            isCenter: false,
            birthdayColor: $constants.palette.white.withOpacity(
              0.7,
            ),
            hasBackground: true,
          ),
          ActiveStatusWidget(activeStatus: widget.onlineStatus),
        ],
      ),
    );
  }
}
