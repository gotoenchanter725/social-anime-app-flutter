import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class MarkAvatarAsDefaultBloc
    extends MutationBloc<MarkAvatarAsDefault$Mutation> {
  MarkAvatarAsDefaultBloc() : super(options: _markAvatarAsDefaultOptions());

  static WatchQueryOptions<Object?> _markAvatarAsDefaultOptions() {
    return WatchQueryOptions(
      document: MARK_AVATAR_AS_DEFAULT_MUTATION_DOCUMENT,
    );
  }

  void markAvatarAsDefault({required String avatarGuid, required int userId}) {
    // Generate a clientMutationId using the userId and a timestamp
    final clientMutationId =
        'user-$userId-${DateTime.now().millisecondsSinceEpoch}';

    // Create the input object with the clientMutationId
    final input = MarkAvatarDefaultInput(
      avatarGuid: avatarGuid,
      userId: userId,
      clientMutationId: clientMutationId,
    );

    // Wrap the input in the MarkAvatarAsDefaultArguments class
    final variables = MarkAvatarAsDefaultArguments(input: input);

    debugPrint("Marking avatar as default: ${variables.toJson()}");

    // Run the mutation with the variables
    run(variables.toJson());
  }

  @override
  MarkAvatarAsDefault$Mutation parseData(Map<String, dynamic>? data) {
    debugPrint('Mark avatar as default response data: $data');
    return MarkAvatarAsDefault$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
