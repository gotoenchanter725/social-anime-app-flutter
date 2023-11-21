import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class UploadPhotoBloc extends MutationBloc<UploadPhoto$Mutation> {
  UploadPhotoBloc() : super(options: _uploadPhotoMutationOptions());

  static WatchQueryOptions<Object?> _uploadPhotoMutationOptions() {
    return WatchQueryOptions(
      document: UPLOAD_PHOTO_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  uploadPhoto({
    required MultipartFile image,
    required int order,
    required int userId,
  }) {
    final variables = UploadPhotoArguments(
      input: UploadPhotoInput(
        order: order,
        userId: userId,
        image: image,
      ),
    ).toJson();

    run(variables);
  }

  @override
  UploadPhoto$Mutation parseData(Map<String, dynamic>? data) {
    return UploadPhoto$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
