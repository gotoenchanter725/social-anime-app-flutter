import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class ResendVerificationCodeBloc
    extends MutationBloc<ResendVerifyCode$Mutation> {
  ResendVerificationCodeBloc()
      : super(options: _resendVerificationCodeMutationOptions());

  static WatchQueryOptions<Object?> _resendVerificationCodeMutationOptions() {
    return WatchQueryOptions(
      document: RESEND_VERIFY_CODE_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  @override
  ResendVerifyCode$Mutation parseData(Map<String, dynamic>? data) {
    return ResendVerifyCode$Mutation.fromJson(data ?? <String, dynamic>{});
  }

  resendCodeToPhoneNumber(String phoneNumber) {
    final variables = ResendVerifyCodeArguments(
            input: ResendVerifyTextInput(phone: phoneNumber))
        .toJson();

    run(variables);
  }
}
