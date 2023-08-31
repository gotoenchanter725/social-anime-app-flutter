import 'package:flutter/material.dart';
import 'package:senpai/screens/profile_fill/bloc/profile_fill_bloc.dart';

import '../../../utils/constants.dart';
import '../../../utils/methods/utils.dart';

class ProgressLineWidget extends StatelessWidget {
  final int progressIndex;
  const ProgressLineWidget({super.key, required this.progressIndex});

  @override
  Widget build(BuildContext context) {
    final maxDivisions = ProfileFillStep.values.length;
    final progressWidth = getSize(context).width * progressIndex / maxDivisions;
    if (progressIndex != 0) {
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
            decoration: BoxDecoration(
              borderRadius: progressIndex != ProfileFillStep.values.length
                  ? BorderRadius.only(
                      topRight: Radius.circular($constants.corners.sm),
                      bottomRight: Radius.circular($constants.corners.sm),
                    )
                  : null,
              gradient: $constants.palette.lineGradient,
            ),
          ),
        ],
      );
    }
    return const SizedBox();
  }
}
