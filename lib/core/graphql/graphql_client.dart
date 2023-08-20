import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:senpai/models/env_model.dart';

GraphQLClient initGraphQLClient(EnvModel env) {
  final httpLink = HttpLink(env.graphApiUrl);

  return GraphQLClient(
    link: httpLink,
    cache: GraphQLCache(),
    defaultPolicies: DefaultPolicies(
      subscribe: Policies(fetch: FetchPolicy.noCache),
    ),
  );
}
