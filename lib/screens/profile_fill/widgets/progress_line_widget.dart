import 'package:flutter/material.dart';
import 'package:senpai/utils/constants.dart';

class ProgressLineWidget extends StatelessWidget {
  final int progressIndex;
  final int maxDivisions;
  final bool hasAllBorderRadius;
  final bool isLoading;

  const ProgressLineWidget({
    super.key,
    required this.progressIndex,
    required this.maxDivisions,
    this.hasAllBorderRadius = false,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final maxWidth = constraints.maxWidth;
        final progressWidth = maxWidth * progressIndex / maxDivisions;

        if (progressIndex != 0 || isLoading) {
          return Stack(
            children: [
              Container(
                height: 4,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: $constants.palette.lightBlue,
                ),
              ),
              Container(
                height: 4,
                width: progressWidth,
                decoration: _getBoxDecoration(),
              ),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  BoxDecoration _getBoxDecoration() {
    return BoxDecoration(
      borderRadius: hasAllBorderRadius
          ? BorderRadius.all(
              Radius.circular($constants.corners.sm),
            )
          : BorderRadius.only(
              topRight: Radius.circular($constants.corners.sm),
              bottomRight: Radius.circular($constants.corners.sm),
            ),
      gradient: $constants.palette.lineGradient,
    );
  }
}
