import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/utils/constants.dart';

class SignupContent extends StatelessWidget {
  const SignupContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      elevation: 0,
                      side: BorderSide(
                          width: 1.0,
                          color: $constants
                              .palette.buttonBorder), // Border styling
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            $constants.corners.sm), // Button border radius
                      ),
                      padding: const EdgeInsets.all(0),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        PathConstants.backIcon,
                        width: 32,
                        height: 32,
                        fit: BoxFit.contain,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
