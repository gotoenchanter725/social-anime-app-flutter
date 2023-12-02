import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class GetDistanceBetweenUsersBloc
    extends MutationBloc<GetDistanceBetweenUsers$Mutation> {
  GetDistanceBetweenUsersBloc()
      : super(options: _getDistanceBetweenUsersMutationOptions());

  static WatchQueryOptions<Object?> _getDistanceBetweenUsersMutationOptions() {
    return WatchQueryOptions(
      document: GET_DISTANCE_BETWEEN_USERS_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  getDistanceBetweenUsers({
    required int userId,
    required int vieweeId,
  }) {
    final variables = GetDistanceBetweenUsersArguments(
      input: GetDistanceBetweenUsersInput(
        userId: userId,
        vieweeId: vieweeId,
      ),
    ).toJson();

    run(variables);
  }

  @override
  GetDistanceBetweenUsers$Mutation parseData(Map<String, dynamic>? data) {
    return GetDistanceBetweenUsers$Mutation.fromJson(
      data ?? <String, dynamic>{},
    );
  }
}
