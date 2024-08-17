import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/gradient_filled_button.dart';
import 'package:senpai/core/widgets/gradient_outlined_button.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SettingsAvatarCardItem extends StatelessWidget {
  const SettingsAvatarCardItem(
      {super.key, required this.data, required this.selected});

  final Map<String, dynamic> data;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: getWidthSize(context, 0.117)),
          child: Container(
            decoration: selected
                ? BoxDecoration(
                    border: Border.all(
                      color: Colors.yellow, // Border color
                      width: 1, // Border width
                    ),
                    borderRadius: BorderRadius.circular(20),
                  )
                : null, // No border if not selected
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                data["image"],
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: getWidthSize(context, 0.026),
          right: getWidthSize(context, 0.026),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: getWidthSize(context, 0.112),
                height: getWidthSize(context, 0.112),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(data["profile"]),
                  radius: getWidthSize(context, 0.112),
                ),
              ),
              SizedBox(height: getWidthSize(context, 0.015)),
              Text(
                data["name"],
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: getWidthSize(context, 0.023),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
