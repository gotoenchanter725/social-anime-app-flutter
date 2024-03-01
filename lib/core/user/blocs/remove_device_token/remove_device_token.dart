import 'package:fresh_dio/fresh_dio.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/auth/device_token_model.dart';
import 'package:senpai/utils/methods/aliases.dart';

@injectable
class RemoveDeviceTokenBloc extends MutationBloc<RemoveDeviceToken$Mutation> {
  RemoveDeviceTokenBloc() : super(options: _removeDeviceTokenMutationOptions());

  static WatchQueryOptions<Object?> _removeDeviceTokenMutationOptions() {
    return WatchQueryOptions(
      document: REMOVE_DEVICE_TOKEN_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  removeDeviceToken({
    required String token,
    required String userId,
  }) {
    logIt.info('Adding device token to user: $userId with token: $token');
    final variables = RemoveDeviceTokenArguments(
      input: RemoveDeviceTokenInput(
        deviceToken: token,
        userId: userId,
      ),
    ).toJson();

    run(variables);
  }

  checkStorageAndRemoveDeviceToken({
    required String userId,
  }) async {
    DeviceTokenModel? savedDeviceTokenModel =
        await getIt<TokenStorage<DeviceTokenModel>>().read();
    if (savedDeviceTokenModel != null &&
        savedDeviceTokenModel.token.isNotEmpty) {
      removeDeviceToken(
        token: savedDeviceTokenModel.token,
        userId: userId,
      );

      await getIt<TokenStorage<DeviceTokenModel>>().delete();

      logIt.info('Device token removed from user: $userId');
    }
  }

  @override
  RemoveDeviceToken$Mutation parseData(Map<String, dynamic>? data) {
    return RemoveDeviceToken$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
