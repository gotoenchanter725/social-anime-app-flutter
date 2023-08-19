import 'package:flutter/material.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class EntryContent extends StatelessWidget {
  const EntryContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: $constants.insets.lg,
            ),
            child: Column(children: [
              Text(
                TextConstants.entryText,
                style: getTextTheme(context)
                    .labelMedium
                    ?.copyWith(color: $constants.palette.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: $constants.insets.lg,
              ),
              SizedBox(
                child: ElevatedButton(
                    onPressed: () {
                      print("pressed");
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular($constants.corners.md),
                      ),
                    ),
                    child: Container(
                      height: 56,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular($constants.corners.md),
                          gradient: $constants.palette.buttonGradient),
                      child: Text(
                        TextConstants.signUp,
                        style: getTextTheme(context).headlineSmall,
                      ),
                    )),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
