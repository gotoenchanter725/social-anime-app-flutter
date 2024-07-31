import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class GradientFilledButton extends StatelessWidget {
  const GradientFilledButton({
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
    this.trailingImagePath,
    this.trailingIconPath,
  });
  final Function() onPressed;
  final String title;
  final Color? startColor;
  final Color? endColor;
  final IconData? icon;
  final String? iconPath;
  final String? trailingImagePath;
  final String? trailingIconPath;
  final bool isLoading;
  final double? borderRadius;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        alignment: Alignment.center,
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
        child: Padding(
          padding: EdgeInsets.all(getWidthSize(context, 0.003)),
          child: SizedBox(
            height: height ?? getWidthSize(context, 0.13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (isLoading)
                  SizedBox(
                      width: (height ?? getWidthSize(context, 0.13)) * 0.5,
                      height: (height ?? getWidthSize(context, 0.13)) * 0.5,
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
                    size: (height ?? getWidthSize(context, 0.13)) * 0.5,
                  ),
                if (!isLoading && iconPath != null)
                  SvgPicture.asset(
                    iconPath!, // replace with your icon path
                    width: (height ?? getWidthSize(context, 0.13)) * 0.5,
                    height: (height ?? getWidthSize(context, 0.13)) * 0.5,
                  ),
                if (isLoading || icon != null || iconPath != null)
                  SizedBox(width: getWidthSize(context, 0.028)),
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: getWidthSize(context, 0.0372),
                      fontWeight: FontWeight.w700),
                ),
                if (isLoading ||
                    trailingImagePath != null ||
                    trailingIconPath != null)
                  SizedBox(width: getWidthSize(context, 0.028)),
                if (!isLoading && trailingImagePath != null)
                  Image.asset(
                    trailingImagePath!, // replace with your icon path
                    width: (height ?? getWidthSize(context, 0.13)) * 0.5,
                    height: (height ?? getWidthSize(context, 0.13)) * 0.5,
                    fit: BoxFit.contain,
                  ),
                if (!isLoading && trailingIconPath != null)
                  SvgPicture.asset(
                    trailingIconPath!, // replace with your icon path
                    width: (height ?? getWidthSize(context, 0.13)) * 0.5,
                    height: (height ?? getWidthSize(context, 0.13)) * 0.5,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
