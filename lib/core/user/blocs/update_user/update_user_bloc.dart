import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';
import 'package:senpai/models/profile_fill/update_user_model.dart';

@injectable
class UpdateUserBloc extends MutationBloc<UpdateUser$Mutation> {
  UpdateUserBloc() : super(options: _updateUserMutationOptions());

  static WatchQueryOptions<Object?> _updateUserMutationOptions() {
    return WatchQueryOptions(
      document: UPDATE_USER_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  updateUserInfo({
    required UpdateUserModel user,
    bool? verified,
  }) {
    final variables = UpdateUserArguments(
      input: UpdateUserInput(
        params: UserUpdateInput(
          userId: user.id,
          phone: user.phone,
          bio: user.bio ?? '',
          birthday: user.birthday,
          desiredGender: user.desiredGender,
          firstName: user.firstName,
          gender: user.gender,
          occupation: user.occupation,
          school: user.school ?? '',
          hasLocationHidden: user.hasLocationHidden,
          verified: verified ?? false,
          isDisplayingRecentlyActive: user.isDisplayingRecentlyActive ?? true,
          isDisplayingActive: user.isDisplayingActive ?? true,
        ),
      ),
    ).toJson();

    run(variables);
  }

  @override
  UpdateUser$Mutation parseData(Map<String, dynamic>? data) {
    return UpdateUser$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
