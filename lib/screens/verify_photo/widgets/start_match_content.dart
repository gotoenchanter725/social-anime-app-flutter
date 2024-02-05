import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_anime/add_favorite_anime_bloc.dart';
import 'package:senpai/core/user/blocs/update_user/update_user_bloc.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile_fill/bloc/profile_fill_bloc.dart';
import 'package:senpai/screens/verify_photo/bloc/verify_photo_bloc.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class StartMatchContent extends StatelessWidget {
  const StartMatchContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: _buildHeader(context),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                PathConstants.startMatchBg,
                height: getSize(context).height * 0.3,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: $constants.insets.xl,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _buildStartMatchButton(context),
          ),
          SizedBox(
            height: $constants.insets.sm,
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final bloc = BlocProvider.of<VerifyPhotoBloc>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          R.strings.thanksLotText,
          style: getTextTheme(context)
              .headlineLarge
              ?.copyWith(color: $constants.palette.white),
        ),
        if (bloc.photo != null)
          Text(
            R.strings.weReceivedYourPhotoText,
            style: getTextTheme(context).bodySmall?.copyWith(
                  color: $constants.palette.grey,
                  letterSpacing: 0,
                ),
            textAlign: TextAlign.center,
          ),
      ],
    );
  }

  Widget _buildStartMatchButton(BuildContext context) {
    final bloc = BlocProvider.of<VerifyPhotoBloc>(context);
    final blocProfileFill = BlocProvider.of<ProfileFillBloc>(context);
    final serverBloc = BlocProvider.of<AddFavoriteAnimeBloc>(context);
    return BlocListener<VerifyPhotoBloc, VerifyPhotoState>(
      listenWhen: (_, currState) => currState is VerifyPhotoSucssesfulState,
      listener: (context, state) {
        if (blocProfileFill.animeList.isEmpty) {
          final serverBloc = BlocProvider.of<UpdateUserBloc>(context);
          serverBloc.updateUserInfo(user: blocProfileFill.user);
        } else {
          serverBloc.addFavoriteAnimeList(
            userId: blocProfileFill.userId,
            animeIds:
                blocProfileFill.animeList.map((anime) => anime.id).toList(),
          );
        }
      },
      child: PrimaryButton(
        text: R.strings.startMatchingButton,
        onPressed: () async {
          bloc.add(OnStartMatchingEvent());
        },
      ),
    );
  }
}
