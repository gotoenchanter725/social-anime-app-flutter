import 'package:flutter/material.dart';
import 'package:senpai/screens/profile_fill/spotify/widgets/spotify_content.dart';

class SpotifyPage extends StatelessWidget {
  const SpotifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SpotifyContent(),
    );
  }
}
