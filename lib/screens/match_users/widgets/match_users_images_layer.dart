import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class MatchUsersImagesLayer extends StatelessWidget {
  final String userUrl;
  final String matcheeUrl;

  const MatchUsersImagesLayer({
    Key? key,
    required this.userUrl,
    required this.matcheeUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: $constants.insets.lg,
                bottom: $constants.insets.md,
              ),
              child: Row(
                children: [
                  _buildImage(
                    context,
                    userUrl, 
                    constraints.maxHeight,
                  ),
                  _buildImage(
                    context,
                    matcheeUrl, 
                    constraints.maxHeight,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              child: SvgPicture.asset(
                PathConstants.matchHeartBgIcon,
                height: $constants.insets.offset,
                width: $constants.insets.offset,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: constraints.maxHeight / 2,
                width: getSize(context).width,
                decoration: BoxDecoration(
                  gradient: $constants.palette.matchGradient,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildImage(BuildContext context, String image, double height) {
    return SizedBox(
      height: height,
      width: getSize(context).width / 2,
      child: Image(
        image: NetworkImage(image),
        fit: BoxFit.cover,
        height: height,
        width: getSize(context).width / 2,
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
    );
  }
}
