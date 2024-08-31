import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class GradientOutlinedButton extends StatelessWidget {
  const GradientOutlinedButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.startColor,
    this.endColor,
    this.icon,
    this.iconPath,
    this.isLoading = false,
    this.borderRadius,
    this.height,
  });
  final Function() onPressed;
  final String title;
  final Color? startColor;
  final Color? endColor;
  final IconData? icon;
  final String? iconPath;
  final bool isLoading;
  final double? borderRadius;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              startColor ?? $constants.palette.pink,
              endColor ?? startColor ?? $constants.palette.pink,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(
              borderRadius ?? getWidthSize(context, 0.14)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
              borderRadius ?? getWidthSize(context, 0.14)),
          child: Padding(
            padding: const EdgeInsets.all(1),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(
                      borderRadius ?? getWidthSize(context, 0.14))),
              child: Padding(
                padding: EdgeInsets.all(getWidthSize(context, 0.003)),
                child: SizedBox(
                  height: height ?? getWidthSize(context, 0.13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (isLoading)
                        SizedBox(
                            width: getWidthSize(context, 0.056),
                            height: getWidthSize(context, 0.056),
                            child: Center(
                                child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                              backgroundColor: Colors.white.withOpacity(0.37),
                            ))),
                      if (!isLoading && icon != null)
                        Icon(
                          icon,
                          color: Colors.white,
                          size: getWidthSize(context, 0.056),
                        ),
                      if (!isLoading && iconPath != null)
                        SvgPicture.asset(
                          iconPath!, // replace with your icon path
                          width: getWidthSize(context, 0.056),
                          height: getWidthSize(context, 0.056),
                        ),
                      if (!isLoading && icon == null && iconPath == null)
                        SizedBox(width: getWidthSize(context, 0.028)),
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: getWidthSize(context, 0.0372),
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
