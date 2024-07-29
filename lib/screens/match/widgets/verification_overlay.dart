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
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.037),
            child: Container(
              // height: getSize(context).height * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width * 0.046),
                color: $constants.palette.appBackground,
              ),
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0.093,
                left: MediaQuery.of(context).size.width * 0.063,
                right: MediaQuery.of(context).size.width * 0.063,
                bottom: MediaQuery.of(context).size.width * 0.063,
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    top: MediaQuery.of(context).size.width * 0.419,
                    child: Center(
                        child: Image.asset(
                      PathConstants.profileVerifyShadow,
                    )),
                  ),
                  Column(mainAxisSize: MainAxisSize.min, children: [
                    Text(
                      "Verification Required!",
                      style: getTextTheme(context).headlineSmall!.copyWith(
                            fontSize: MediaQuery.of(context).size.width * 0.047,
                            color: $constants.palette.white,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.037,
                    ),
                    Text(
                      "Verify your profile to enable video chat!",
                      style: getTextTheme(context).titleMedium!.copyWith(
                            fontSize: MediaQuery.of(context).size.width * 0.033,
                            color: $constants.palette.grey,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.074,
                    ),
                    _buildAmenityRow(context, PathConstants.matchAmenityIcon1,
                        "To ensure a safe and genuine experience, please verify your profile."),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.065,
                    ),
                    _buildAmenityRow(context, PathConstants.matchAmenityIcon2,
                        "Use your camera in a well-lit area for the best results"),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.037,
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              bottom:
                                  MediaQuery.of(context).size.width * 0.098),
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
            top: MediaQuery.of(context).size.height / 2 -
                MediaQuery.of(context).size.width * 0.839,
            right: -MediaQuery.of(context).size.width * 0.0046,
            child: InkWell(
              onTap: onClosed,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.093,
                height: MediaQuery.of(context).size.width * 0.093,
                decoration: BoxDecoration(
                  color: $constants.palette.appBackground,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 4, // Border width
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.close_rounded,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.width * 0.037,
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
