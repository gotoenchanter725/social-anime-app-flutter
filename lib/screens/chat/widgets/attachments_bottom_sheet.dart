import 'package:flutter/material.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class AttachmentsBottomSheet extends StatelessWidget {
  const AttachmentsBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: $constants.insets.sm,
        vertical: $constants.insets.lg,
      ),
      child: SizedBox(
        height: $constants.sizes.attachmentsBottomSheetSize,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildAttachmentOption(
                context,
                Icons.image,
                'Gallery',
              ),
              _buildAttachmentOption(
                context,
                Icons.camera_alt,
                'Camera',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAttachmentOption(
      BuildContext context, IconData icon, String title) {
    return Container(
      decoration: BoxDecoration(
        color:
            $constants.palette.buttonBackground, // Or any dark color you prefer
        borderRadius: BorderRadius.circular(
          $constants.insets.sm,
        ), // Border radius of 12
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: $constants.insets.xxs,
          horizontal: $constants.insets.md,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: $constants.sizes.attachmentsIconSize,
              color: $constants.palette.white,
            ),
            const SizedBox(height: 8.0),
            Text(
              title,
              style: getTextTheme(context).headlineSmall!.copyWith(
                    color: $constants.palette.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
