import 'package:senpai/data/path_constants.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/screens/onboarding/widgets/onboarding_tile.dart';

class DataConstants {
  // Onboarding
  static final onboardingTiles = [
    const OnboardingTile(
      title: TextConstants.onboarding1Title,
      subTitle: TextConstants.onboarding1SubTitle,
      imagePath: PathConstants.onboarding1,
    ),
    const OnboardingTile(
      title: TextConstants.onboarding2Title,
      subTitle: TextConstants.onboarding2SubTitle,
      imagePath: PathConstants.onboarding2,
    ),
    const OnboardingTile(
      title: TextConstants.onboarding3Title,
      subTitle: TextConstants.onboarding3SubTitle,
      imagePath: PathConstants.onboarding3,
    ),
  ];
}
