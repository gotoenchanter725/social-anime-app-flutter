import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class CreateUserBloc extends MutationBloc<CreateUser$Mutation> {
  CreateUserBloc() : super(options: _createUserMutationOptions());

  static WatchQueryOptions<Object?> _createUserMutationOptions() {
    return WatchQueryOptions(
      document: CREATE_USER_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  createUserWithPhoneNumber(String phoneNumber) {
    final variables = CreateUserArguments(
      input: CreateUserInput(
        params: UserInput(phone: phoneNumber),
      ),
    ).toJson();

    run(variables);
  }

  @override
  CreateUser$Mutation parseData(Map<String, dynamic>? data) {
    return CreateUser$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
