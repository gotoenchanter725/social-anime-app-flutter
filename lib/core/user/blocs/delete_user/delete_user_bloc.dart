import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class DeleteUserBloc extends MutationBloc<DeleteUser$Mutation> {
  DeleteUserBloc() : super(options: _deleteUserMutationOptions());

  static WatchQueryOptions<Object?> _deleteUserMutationOptions() {
    return WatchQueryOptions(
      document: DELETE_USER_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  deleteUser({
    required int userId,
  }) {
    final variables = DeleteUserArguments(
      input: DeleteUserInput(
        userId: userId,
      ),
    ).toJson();

    run(variables);
  }

  @override
  DeleteUser$Mutation parseData(Map<String, dynamic>? data) {
    return DeleteUser$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
