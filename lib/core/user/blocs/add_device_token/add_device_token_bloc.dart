import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class AddDeviceTokenBloc extends MutationBloc<AddDeviceToken$Mutation> {
  AddDeviceTokenBloc() : super(options: _addDeviceTokenMutationOptions());

  static WatchQueryOptions<Object?> _addDeviceTokenMutationOptions() {
    return WatchQueryOptions(
      document: ADD_DEVICE_TOKEN_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  addDeviceToken({
    required String token,
    required String userId,
  }) {
    final variables = AddDeviceTokenArguments(
      input: AddDeviceTokenInput(
        deviceToken: token,
        userId: userId,
      ),
    ).toJson();

    run(variables);
  }

  @override
  AddDeviceToken$Mutation parseData(Map<String, dynamic>? data) {
    return AddDeviceToken$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
