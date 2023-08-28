import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class ValidatePhoneBloc extends MutationBloc<ValidatePhone$Mutation> {
  ValidatePhoneBloc() : super(options: _validatePhoneMutationOptions());

  static WatchQueryOptions<Object?> _validatePhoneMutationOptions() {
    return WatchQueryOptions(
      document: VALIDATE_PHONE_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  @override
  ValidatePhone$Mutation parseData(Map<String, dynamic>? data) {
    return ValidatePhone$Mutation.fromJson(data ?? <String, dynamic>{});
  }

  validateUserAccount(int code, String id) {
    final variables = ValidatePhoneArguments(
            input: ValidatePhoneInput(code: code, userId: id))
        .toJson();

    run(variables);
  }
}
