import 'package:senpai/data/text_constants.dart';

enum UserGender {
  male,
  female;

  static UserGender genderFromServer(int? gender) =>
      gender == 0 ? UserGender.male : UserGender.female;
}

String genderToString(UserGender userGender) =>
    userGender == UserGender.male ? TextConstants.male : TextConstants.female;

int genderToServer(UserGender userGender) =>
    userGender == UserGender.male ? 0 : 1;
