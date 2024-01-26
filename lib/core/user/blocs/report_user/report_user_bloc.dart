import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class ReportUserBloc extends MutationBloc<ReportUser$Mutation> {
  ReportUserBloc() : super(options: _reportUserMutationOptions());

  static WatchQueryOptions<Object?> _reportUserMutationOptions() {
    return WatchQueryOptions(
      document: REPORT_USER_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  reportUser({
    required String conversationId,
    required String userId,
    required String offenseId,
    required String reason,
  }) {
    final variables = ReportUserArguments(
      input: ReportUserInput(
        params: ReportInput(
          conversationId: conversationId,
          userId: userId,
          offenseId: offenseId,
          reason: reason,
        ),
      ),
    ).toJson();

    run(variables);
  }

  @override
  ReportUser$Mutation parseData(Map<String, dynamic>? data) {
    return ReportUser$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
