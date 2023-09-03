import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/core/widgets/icon_input.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/models/match/match_user_data.dart';
import 'package:senpai/screens/chat_list/widgets/match_list.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class ChatListContent extends StatelessWidget {
  const ChatListContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: $constants.insets.sm,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                PathConstants.launcher,
                width: $constants.insets.lg,
                height: $constants.insets.lg,
                fit: BoxFit.contain,
              ),
              SvgPicture.asset(
                PathConstants.crownIcon,
                width: $constants.insets.lg,
                height: $constants.insets.lg,
                fit: BoxFit.contain,
              )
            ],
          ),
        ),
        SizedBox(
          height: $constants.insets.md,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
          child: SenpaiIconInput(
            iconPath: PathConstants.searchIcon,
            hintText: TextConstants.searchHintText,
            onChange: (text) {
              print(text);
            },
          ),
        ),
        SizedBox(
          height: $constants.insets.md,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
          child: Text(
            TextConstants.matchesTitle,
            textAlign: TextAlign.left,
            style: getTextTheme(context)
                .headlineSmall!
                .copyWith(color: $constants.palette.white),
          ),
        ),
        SizedBox(
          height: $constants.insets.sm,
        ),
        Padding(
          padding: EdgeInsets.only(left: $constants.insets.lg),
          child: MatchList(users: [
            MatchUserData(
              imageUrl:
                  "https://images.pexels.com/photos/5226193/pexels-photo-5226193.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              isOnline: true,
              userName: "Mike",
            ),
            MatchUserData(
              imageUrl:
                  "https://images.pexels.com/photos/4926674/pexels-photo-4926674.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              isOnline: true,
              userName: "Lewis",
            ),
            MatchUserData(
              imageUrl:
                  "https://images.pexels.com/photos/13876068/pexels-photo-13876068.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              isOnline: false,
              userName: "Fernando",
            ),
            MatchUserData(
              imageUrl:
                  "https://images.pexels.com/photos/6426224/pexels-photo-6426224.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              isOnline: false,
              userName: "Henry",
            ),
            MatchUserData(
              imageUrl:
                  "https://images.pexels.com/photos/7256511/pexels-photo-7256511.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              isOnline: true,
              userName: "Arthur",
            ),
          ]),
        )
      ],
    );
  }
}
