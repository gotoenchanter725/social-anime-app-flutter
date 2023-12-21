import 'package:flutter/material.dart';
import 'package:senpai/models/chat/chat_message.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SystemMessage extends StatelessWidget {
  final ChatMessage message;
  const SystemMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: $constants.insets.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: BoxDecoration(
              color: $constants.palette.lightBlue,
              borderRadius: BorderRadius.circular($constants.corners.lg),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: $constants.insets.sm,
                  vertical: $constants.insets.xs),
              child: Text(
                message.text,
                style: getTextTheme(context).labelMedium!.copyWith(
                      color: $constants.palette.grey,
                      letterSpacing: 0,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
