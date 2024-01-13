import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';
import 'package:senpai/utils/methods/aliases.dart';

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
    log('entry route variables: $variables');
    run(variables);
  }

  bool signInUser(StackRouter router, dynamic data) {
    if (data == null) {
      // handle this fatal error
      logIt.wtf("A successful empty response just got recorded");
      return false;
    }

    String id = data["signIn"]["user"]["id"];
    String phone = data["signIn"]["user"]["phone"];
    logIt.info("signed in user of id $id and phone $phone");

    log('login data found: $id');
    // change it if needed (and after change check entry page)
    // router.pushNamed("/home");
    return true;
  }
}
