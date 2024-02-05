import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/icon_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/match_users/bloc/match_users_bloc.dart';
import 'package:senpai/screens/match_users/widgets/match_send_message_content.dart';
import 'package:senpai/screens/match_users/widgets/match_users_emoji_widget.dart';
import 'package:senpai/screens/match_users/widgets/match_users_images_layer.dart';
import 'package:senpai/screens/match_users/widgets/newton_animation_widget.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class MatchUsersContent extends StatelessWidget {
  const MatchUsersContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MatchUsersBloc, MatchUsersState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<MatchUsersBloc>(context);
        final bool hasFocus = bloc.hasFocusNode;
        return Focus(
          onFocusChange: (isFocus) {
            final bloc = BlocProvider.of<MatchUsersBloc>(context);
            bloc.add(OnChangeFocusEvent(hasFocusNode: isFocus));
          },
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SafeArea(
                child: Column(
                  children: [
                    ..._buildHeaderLayer(context),
                    SizedBox(height: $constants.insets.xs),
                    Expanded(
                        child: MatchUsersImagesLayer(
                      userUrl: bloc.likeUserModel.match?.user?.gallery?.photos
                              .first.url ??
                          '',
                      matcheeUrl: bloc.likeUserModel.match?.matchee?.gallery
                              ?.photos.first.url ??
                          '',
                    )),
                    if (!hasFocus) const MatchUsersEmojiWidget(),
                  ],
                ),
              ),
              const MatchSendMessageContent(),
              if (state is StartAnimationFireworkState)
                const NewtonAnimationWidget(),
            ],
          ),
        );
      },
    );
  }

  List<Widget> _buildHeaderLayer(BuildContext context) {
    final bloc = BlocProvider.of<MatchUsersBloc>(context);
    final name = bloc.likeUserModel.match?.matchee?.firstName ?? '';
    return [
      Container(
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(
          top: $constants.insets.lg,
          right: $constants.insets.sm,
        ),
        child: SenpaiIconButton(
          onPressed: () => Navigator.of(context).pop(),
          iconPath: PathConstants.closeIcon,
          borderColor: $constants.palette.buttonBorder,
        ),
      ),
      SizedBox(height: $constants.insets.xs),
      Text(
        R.strings.itsTitle.toUpperCase(),
        textAlign: TextAlign.center,
        style: getTextTheme(context).headlineLarge!.copyWith(
              color: $constants.palette.white,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w800,
              fontFamily: $constants.theme.defaultFontFamily,
            ),
      ),
      Text(
        '${R.strings.matchTabText}!'.toUpperCase(),
        textAlign: TextAlign.center,
        style: getTextTheme(context).displayLarge!.copyWith(
              color: $constants.palette.white,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w900,
              fontFamily: $constants.theme.defaultFontFamily,
            ),
      ),
      SizedBox(height: $constants.insets.xs),
      Text(
        '${R.strings.youAndText} $name ${R.strings.haveLikedEachOtherText} ',
        textAlign: TextAlign.center,
        style: getTextTheme(context).bodySmall!.copyWith(
              color: $constants.palette.white,
              letterSpacing: 0,
            ),
      ),
    ];
  }
}
