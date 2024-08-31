import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class GrantUserAvatarBloc extends MutationBloc<GrantUserAvatar$Mutation> {
  GrantUserAvatarBloc() : super(options: _grantUserAvatarMutationOptions());

  static WatchQueryOptions<Object?> _grantUserAvatarMutationOptions() {
    return WatchQueryOptions(
      document: GRANT_USER_AVATAR_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  grantUserAvatar({
    required String userId,
    required String avatarGuid,
  }) {
    final variables = GrantUserAvatarArguments(
      input: GrantUserAvatarInput(
        userId: userId,
        avatarGuid: avatarGuid,
      ),
    ).toJson();

    run(variables);
  }

  @override
  GrantUserAvatar$Mutation parseData(Map<String, dynamic>? data) {
    return GrantUserAvatar$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
