import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/edit_profile/edit_spotify/bloc/edit_spotify_bloc.dart';

import 'package:senpai/utils/methods/utils.dart';

class DisconnectSpotifyWidget extends StatelessWidget {
  const DisconnectSpotifyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditSpotifyBloc, EditSpotifyState>(
      listenWhen: (_, currState) =>
          currState is SpotifyDisconnectSucssesfulState,
      listener: (context, state) async {
        await context.router.pop();
      },
      builder: (context, state) {
        final bloc = BlocProvider.of<EditSpotifyBloc>(context);
        if (bloc.isShowDisconnectSpotify) {
          return TextButton(
            onPressed: () {
              bloc.add(OnSpotifyDisconnectEvent());
            },
            child: Text(
              R.strings.disconnectSpotifyText,
              style: getTextTheme(context).titleSmall,
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
