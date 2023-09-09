import 'package:senpai/data/text_constants.dart';

enum DesiredGender {
  male,
  female,
  both;

  static DesiredGender genderFromServer(int? gender) {
    if (gender == 0) {
      return DesiredGender.male;
    } else if (gender == 1) {
      return DesiredGender.female;
    } else {
      return DesiredGender.both;
    }
  }
}

String genderToString(DesiredGender desiredGender) {
  if (desiredGender == DesiredGender.male) {
    return TextConstants.male;
  } else if (desiredGender == DesiredGender.female) {
    return TextConstants.female;
  } else {
    return TextConstants.both;
  }
}

int genderToServer(DesiredGender desiredGender) {
  if (desiredGender == DesiredGender.male) {
    return 0;
  } else if (desiredGender == DesiredGender.female) {
    return 1;
  } else {
    return 2;
  }
}
