import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:senpai/models/env_model.dart';

class GraphQlConfig {
  GraphQLClient initGraphQLClient(EnvModel env) {
    final httpLink = HttpLink(env.apiUrl);

    return GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(),
      defaultPolicies: DefaultPolicies(
        subscribe: Policies(fetch: FetchPolicy.noCache),
      ),
    );
  }
}
