import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:senpai/utils/methods/aliases.dart';

class SenpaiEmoji extends StatelessWidget {
  final String emojiName;
  final double size;

  const SenpaiEmoji({Key? key, required this.emojiName, this.size = 24.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emojiParser = EmojiParser();
    Emoji emoji = emojiParser.get(emojiName);

    if (emoji == Emoji.None) {
      logIt.error("Emoji not found: $emojiName");
      return const SizedBox.shrink();
    }

    return Text(
      emoji.code,
      style: TextStyle(
        fontSize: size,
      ),
    );
  }
}
