import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/onboarding/widgets/onboarding_tile.dart';

class DataConstants {
  // Onboarding
  static final onboardingTiles = [
    OnboardingTile(
      title: R.strings.onboarding1Title,
      subTitle: R.strings.onboarding1SubTitle,
      imagePath: PathConstants.onboarding1,
    ),
    OnboardingTile(
      title: R.strings.onboarding2Title,
      subTitle: R.strings.onboarding2SubTitle,
      imagePath: PathConstants.onboarding2,
    ),
    OnboardingTile(
      title: R.strings.onboarding3Title,
      subTitle: R.strings.onboarding3SubTitle,
      imagePath: PathConstants.onboarding3,
    ),
  ];
}
