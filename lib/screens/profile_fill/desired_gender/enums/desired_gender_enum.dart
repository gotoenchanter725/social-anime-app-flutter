import 'package:senpai/l10n/resources.dart';

//TODO: gender fron BE
//desires_men
//desires_women
//desires_both
const _genderFromServerMen = 'desires_men';
const _genderFromServerWomen = 'desires_women';

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
    return R.strings.male;
  } else if (desiredGender == DesiredGender.female) {
    return R.strings.female;
  } else {
    return R.strings.both;
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

int desiredGenderFromServerString(String? desiredGender) {
  if (desiredGender == _genderFromServerMen) {
    return 0;
  } else if (desiredGender == _genderFromServerWomen) {
    return 1;
  } else {
    return 2;
  }
}
