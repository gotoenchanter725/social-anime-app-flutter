import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class GrantUserPremiumBloc extends MutationBloc<GrantUserPremium$Mutation> {
  GrantUserPremiumBloc() : super(options: _grantUserPremiumMutationOptions());

  static WatchQueryOptions<Object?> _grantUserPremiumMutationOptions() {
    return WatchQueryOptions(
      document: GRANT_USER_PREMIUM_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  grantUserPremium({
    required int userId,
  }) {
    final variables = GrantUserPremiumArguments(
      input: GrantUserPremiumInput(
        userId: userId,
      ),
    ).toJson();

    run(variables);
  }

  @override
  GrantUserPremium$Mutation parseData(Map<String, dynamic>? data) {
    return GrantUserPremium$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
