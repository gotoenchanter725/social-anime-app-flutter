import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class DeletePhotoBloc extends MutationBloc<DeletePhoto$Mutation> {
  DeletePhotoBloc() : super(options: _deletePhotoMutationOptions());

  static WatchQueryOptions<Object?> _deletePhotoMutationOptions() {
    return WatchQueryOptions(
      document: DELETE_PHOTO_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  deletePhoto({
    required String photoId,
    required int userId,
  }) {
    final variables = DeletePhotoArguments(
      input: DeletePhotoInput(
        userId: '$userId',
        photoId: photoId,
      ),
    ).toJson();

    run(variables);
  }

  @override
  DeletePhoto$Mutation parseData(Map<String, dynamic>? data) {
    return DeletePhoto$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
