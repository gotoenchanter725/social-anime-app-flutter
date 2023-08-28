import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class SignInBloc extends MutationBloc<SignIn$Mutation> {
  SignInBloc() : super(options: _signInMutationOptions());

  static WatchQueryOptions<Object?> _signInMutationOptions() {
    return WatchQueryOptions(
      document: SIGN_IN_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  @override
  SignIn$Mutation parseData(Map<String, dynamic>? data) {
    return SignIn$Mutation.fromJson(data ?? <String, dynamic>{});
  }

  signInExistingUser(String token) {
    final variables =
        SignInArguments(input: SignInInput(token: token)).toJson();

    run(variables);
  }
}
