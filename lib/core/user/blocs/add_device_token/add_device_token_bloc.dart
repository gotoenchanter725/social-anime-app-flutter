import 'dart:io';

import 'package:fresh_dio/fresh_dio.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/auth/device_token_model.dart';
import 'package:senpai/utils/methods/aliases.dart';

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
    logIt.info('Adding device token to user: $userId with token: $token');
    var deviceType = 'android';
    if (Platform.isIOS) {
      deviceType = 'ios';
    }
    final variables = AddDeviceTokenArguments(
      input: AddDeviceTokenInput(
        deviceToken: token,
        userId: userId,
        deviceType: deviceType,
      ),
    ).toJson();

    run(variables);
  }

  checkStorageAndAddDeviceToken({
    required String userId,
  }) async {
    DeviceTokenModel? savedDeviceTokenModel =
        await getIt<TokenStorage<DeviceTokenModel>>().read();
    if (savedDeviceTokenModel != null &&
        savedDeviceTokenModel.token.isNotEmpty) {
      addDeviceToken(
        token: savedDeviceTokenModel.token,
        userId: userId,
      );
    }
  }

  @override
  AddDeviceToken$Mutation parseData(Map<String, dynamic>? data) {
    return AddDeviceToken$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
