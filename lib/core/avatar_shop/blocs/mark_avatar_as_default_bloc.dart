import 'package:flutter/material.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/auth/auth_model.dart';

@injectable
class MarkAvatarAsDefaultBloc
    extends MutationBloc<MarkAvatarAsDefault$Mutation> {
  MarkAvatarAsDefaultBloc() : super(options: _markAvatarAsDefaultOptions());

  static WatchQueryOptions<Object?> _markAvatarAsDefaultOptions() {
    return WatchQueryOptions(
      document: MARK_AVATAR_AS_DEFAULT_MUTATION_DOCUMENT,
    );
  }

  Future<void> markAvatarAsDefault({required String avatarGuid}) async {
    final storage = getIt<TokenStorage<AuthModel>>();
    var data = await storage.read();
    if (data != null) {
      var userId = data.user.id;
      final intUserId = int.tryParse(userId);
      if (intUserId == null) {
        debugPrint("Invalid userId: $userId");
        return;
      }
      // Generate a clientMutationId using the userId and a timestamp
      final clientMutationId =
          'user-$userId-${DateTime.now().millisecondsSinceEpoch}';

      // Create the input object with the clientMutationId
      final input = MarkAvatarDefaultInput(
        avatarGuid: avatarGuid,
        userId: intUserId,
        clientMutationId: clientMutationId,
      );

      // Wrap the input in the MarkAvatarAsDefaultArguments class
      final variables = MarkAvatarAsDefaultArguments(input: input);

      debugPrint("Marking avatar as default: ${variables.toJson()}");

      // Run the mutation with the variables
      run(variables.toJson());
    }
  }

  @override
  MarkAvatarAsDefault$Mutation parseData(Map<String, dynamic>? data) {
    return MarkAvatarAsDefault$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
