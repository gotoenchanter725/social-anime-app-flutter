import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class VerificationOverlayWidget extends StatelessWidget {
  const VerificationOverlayWidget(
      {super.key, required this.onClosed, required this.onStartVerification});
  final Function() onClosed;
  final Function() onStartVerification;

  Widget _buildAmenityRow(
      BuildContext context, String iconPath, String amenityText) {
    return Row(
      children: [
        SvgPicture.asset(
          iconPath,
          width: $constants.insets.lg,
          height: $constants.insets.lg,
          fit: BoxFit.contain,
        ),
        const SizedBox(
          width: 10.0,
        ),
        Flexible(
          child: Text(
            amenityText,
            style: getTextTheme(context).titleMedium!.copyWith(
                  fontSize: 14.0,
                  color: $constants.palette.white,
                ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration:
                BoxDecoration(color: $constants.palette.black.withOpacity(0.8)),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              // height: getSize(context).height * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: $constants.palette.appBackground,
              ),
              padding: const EdgeInsets.only(
                  top: 40, left: 27, right: 27, bottom: 20),
              child: Stack(
                children: [
                  Positioned.fill(
                    top: 180,
                    child: Center(
                        child: Image.asset(
                      PathConstants.profileVerifyShadow,
                    )),
                  ),
                  Column(mainAxisSize: MainAxisSize.min, children: [
                    Text(
                      "Verification Required!",
                      style: getTextTheme(context).headlineSmall!.copyWith(
                            fontSize: 20.0,
                            color: $constants.palette.white,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      "Verify your profile to enable video chat!",
                      style: getTextTheme(context).titleMedium!.copyWith(
                            fontSize: 14.0,
                            color: $constants.palette.grey,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 32.0,
                    ),
                    _buildAmenityRow(context, PathConstants.matchAmenityIcon1,
                        "To ensure a safe and genuine experience, please verify your profile."),
                    const SizedBox(
                      height: 28.0,
                    ),
                    _buildAmenityRow(context, PathConstants.matchAmenityIcon2,
                        "Use your camera in a well-lit area for the best results"),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 42),
                          child: SizedBox(
                            width: double.infinity,
                            child: Image.asset(
                              PathConstants.profileVerifyBg,
                              fit: BoxFit.contain,
                              height: (MediaQuery.of(context).size.width - 80) *
                                  0.8 *
                                  263 /
                                  283, //262,
                              width: (MediaQuery.of(context).size.width - 80) *
                                  0.8, //283,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: PrimaryButton(
                            text: "Start Verification",
                            buttonGradient:
                                $constants.palette.verificationButtonGradient,
                            onPressed: onStartVerification,
                          ),
                        ),
                      ],
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: MediaQuery.of(context).size.height / 2 - 355,
            right: 0,
            child: InkWell(
              onTap: onClosed,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: $constants.palette.appBackground,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 4, // Border width
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.close_rounded,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
