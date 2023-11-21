import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class ReorderPhotosBloc extends MutationBloc<ReorderPhotos$Mutation> {
  ReorderPhotosBloc() : super(options: _reorderPhotosMutationOptions());

  static WatchQueryOptions<Object?> _reorderPhotosMutationOptions() {
    return WatchQueryOptions(
      document: REORDER_PHOTOS_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  reorderPhotos({
    required int order,
    required String photoId,
  }) {
    final variables = ReorderPhotosArguments(
      input: ReorderPhotosInput(
        order: '$order',
        photoId: photoId,
      ),
    ).toJson();

    run(variables);
  }

  @override
  ReorderPhotos$Mutation parseData(Map<String, dynamic>? data) {
    return ReorderPhotos$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
