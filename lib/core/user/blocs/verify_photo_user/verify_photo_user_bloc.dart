import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class VerifyPhotoUserBloc extends MutationBloc<SubmitVerifyRequest$Mutation> {
  VerifyPhotoUserBloc() : super(options: _uploadPhotoMutationOptions());

  static WatchQueryOptions<Object?> _uploadPhotoMutationOptions() {
    return WatchQueryOptions(
      document: SUBMIT_VERIFY_REQUEST_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  submitVerifyRequest({
    required MultipartFile image,
    required int userId,
  }) {
    final variables = SubmitVerifyRequestArguments(
      input: SubmitVerifyRequestInput(
        params: VerifyRequestInput(
          image: image,
          userId: userId,
        ),
      ),
    ).toJson();

    run(variables);
  }

  @override
  SubmitVerifyRequest$Mutation parseData(Map<String, dynamic>? data) {
    return SubmitVerifyRequest$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
