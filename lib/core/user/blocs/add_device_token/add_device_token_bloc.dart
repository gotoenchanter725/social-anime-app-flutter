import 'dart:io';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';
import 'package:senpai/utils/methods/aliases.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

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
    FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
    _firebaseMessaging.getToken().then((token) {
      logIt.info("Device token: ${token}");

      if (token != null) {
        addDeviceToken(
          token: token,
          userId: userId,
        );
      }
    });
  }

  @override
  AddDeviceToken$Mutation parseData(Map<String, dynamic>? data) {
    return AddDeviceToken$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
