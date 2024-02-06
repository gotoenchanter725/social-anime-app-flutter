import 'package:senpai/models/profile_fill/update_user_model.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';
import 'package:senpai/screens/profile_fill/desired_gender/enums/desired_gender_enum.dart';
import 'package:senpai/screens/profile_fill/user_gender/enums/user_gender_enum.dart';

extension UserModelMapper on UserProfileModel {
  UpdateUserModel toUpdateModel() {
    return UpdateUserModel(
      id: id,
      phone: phone,
      firstName: firstName,
      birthday: birthday,
      gender: genderFromServerString(gender),
      desiredGender: desiredGenderFromServerString(desiredGender),
      occupation: occupation,
      school: school,
      bio: bio,
      hasLocationHidden: hasLocationHidden,
      isDisplayingActive: isDisplayingActive,
      isDisplayingRecentlyActive: isDisplayingRecentlyActive,
    );
  }
}
