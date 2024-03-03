import 'package:senpai/utils/methods/aliases.dart';
import 'package:url_launcher/url_launcher.dart';

const httpApiOpenSpotify = "https://open.spotify.com/";

void openSpotify(String musicType, String spotifyId) async {
  String url = '$httpApiOpenSpotify$musicType/$spotifyId';
  final canOpen = await canLaunchUrl(Uri.parse(url));
  if (canOpen) {
    launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
    );
  } else {
    logIt.debug("Can't open url: $url");
  }
}
