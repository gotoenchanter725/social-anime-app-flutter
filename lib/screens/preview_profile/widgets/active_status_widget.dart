import 'package:flutter/material.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/preview_profile/enums/online_status_enums.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class ActiveStatusWidget extends StatelessWidget {
  final String? activeStatus;

  const ActiveStatusWidget({
    Key? key,
    this.activeStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final status = OnlineStatus.onlineStatusFromServer(activeStatus);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: $constants.corners.xs,
          width: $constants.corners.xs,
          decoration: BoxDecoration(
            color: status == OnlineStatus.online
                ? $constants.palette.green
                : $constants.palette.disabledTextButton,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: $constants.insets.xs),
        Text(
          status == OnlineStatus.online
              ? R.strings.activeNowTitle
              : R.strings.currentlyNotActiveTitle,
          style: getTextTheme(context).labelMedium!.copyWith(
                letterSpacing: 0,
                color: status == OnlineStatus.online
                    ? $constants.palette.white
                    : $constants.palette.disabledTextButton,
              ),
        ),
      ],
    );
  }
}
