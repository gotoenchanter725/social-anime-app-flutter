import 'package:senpai/data/text_constants.dart';

enum DesiredGender {
  male,
  female,
  both;

  static DesiredGender genderFromServer(int? gender) {
    switch (gender) {
      case 0:
        return DesiredGender.male;
      case 1:
        return DesiredGender.female;
      case 2:
        return DesiredGender.both;
    }
    return DesiredGender.male;
  }
}

String genderToString(DesiredGender desiredGender) {
  switch (desiredGender) {
    case DesiredGender.male:
      return TextConstants.male;
    case DesiredGender.female:
      return TextConstants.female;
    case DesiredGender.both:
      return TextConstants.both;
  }
}

int genderToServer(DesiredGender desiredGender) {
  switch (desiredGender) {
    case DesiredGender.male:
      return 0;
    case DesiredGender.female:
      return 1;
    case DesiredGender.both:
      return 2;
  }
}
