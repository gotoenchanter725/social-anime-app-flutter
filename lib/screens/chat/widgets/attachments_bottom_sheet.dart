import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';
import 'package:senpai/l10n/resources.dart';

class AttachmentsBottomSheet extends StatelessWidget {
  final void Function(XFile) onMediaSelected;

  AttachmentsBottomSheet({Key? key, required this.onMediaSelected})
      : super(key: key);

  final ImagePicker _picker = ImagePicker();

  void _pickMedia(BuildContext context) async {
    final XFile? pickedFile = await _picker.pickMedia();

    if (pickedFile == null) {
      return;
    }

    onMediaSelected(pickedFile);
    Navigator.pop(context);
  }

  void _pickImage(BuildContext context) async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.camera);

    if (pickedFile == null) {
      return;
    }

    onMediaSelected(pickedFile);
    Navigator.pop(context);
  }

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
                R.strings.openGalleryButtonText,
                () => _pickMedia(context),
              ),
              _buildAttachmentOption(
                context,
                Icons.camera_alt,
                R.strings.openCameraButtonText,
                () => _pickImage(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAttachmentOption(
      BuildContext context, IconData icon, String title, VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: $constants
              .palette.buttonBackground, // Or any dark color you prefer
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
      ),
    );
  }
}
