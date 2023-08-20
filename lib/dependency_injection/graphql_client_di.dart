import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/graphql_client.dart';
import 'package:senpai/models/env_model.dart';

@module
abstract class GraphQLInjection {
  GraphQLClient graphql(EnvModel env) => initGraphQLClient(env);
}
