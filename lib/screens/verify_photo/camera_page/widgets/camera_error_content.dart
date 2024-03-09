import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:senpai/core/widgets/icon_button.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';

import 'package:senpai/utils/constants.dart';

class CameraErrorContent extends StatelessWidget {
  const CameraErrorContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all($constants.insets.sm),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: $constants.insets.xl),
            Align(
              alignment: Alignment.centerLeft,
              child: SenpaiIconButton(
                onPressed: () async {
                  await context.router.pop();
                },
                iconPath: PathConstants.backIcon,
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  R.strings.cameraErrorCheckPermission,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: $constants.insets.md),
            PrimaryButton(
              text: R.strings.openAppSettings,
              onPressed: () async {
                openAppSettings().then(
                  (_) async {
                    await context.router.pop();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
