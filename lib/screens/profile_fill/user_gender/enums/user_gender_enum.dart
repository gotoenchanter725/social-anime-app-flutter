import 'package:senpai/data/text_constants.dart';

enum UserGender {
  male,
  female;

  static UserGender genderFromServer(int? gender) {
    switch (gender) {
      case 0:
        return UserGender.male;
      case 1:
        return UserGender.female;
    }
    return UserGender.male;
  }
}

String genderToString(UserGender userGender) {
  switch (userGender) {
    case UserGender.male:
      return TextConstants.male;
    case UserGender.female:
      return TextConstants.female;
  }
}

int genderToServer(UserGender userGender) {
  switch (userGender) {
    case UserGender.male:
      return 0;
    case UserGender.female:
      return 1;
  }
}
