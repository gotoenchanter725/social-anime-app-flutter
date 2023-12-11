import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/user/blocs/update_user/update_user_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';
import '../../../utils/constants.dart';
import '../bloc/profile_fill_bloc.dart';
import '../widgets/profile_fill_content.dart';

@RoutePage()
class ProfileFillPage extends StatelessWidget {
  final String phone;
  final String id;

  const ProfileFillPage({
    super.key,
    required this.phone,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProfileFillBloc>(
          create: (context) =>
              ProfileFillBloc()..add(OnInitUserInfoEvent(id: id, phone: phone)),
        ),
        BlocProvider(create: (_) => getIt<UpdateUserBloc>()),
      ],
      child: Scaffold(
        backgroundColor: $constants.palette.darkBlue,
        body: Stack(
          children: [
            const ProfileFillContent(),
            _buildUpdateUserListeners(),
          ],
        ),
      ),
    );
  }

  Widget _buildUpdateUserListeners() {
    return BlocBuilder<UpdateUserBloc, MutationState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            failed: (error, result) {
              showSnackBarError(context, TextConstants.serverError);
              return const SizedBox.shrink();
            },
            succeeded: (data, result) {
              final response = result.data;
              if (response == null) {
                logIt.wtf("A successful empty response just got set user");
                return const SizedBox.shrink();
              }
              final user = response["updateUser"]["user"];
              if (user == null) {
                showSnackBarError(context, TextConstants.nullUser);
                logIt.error("A user with error");
                return const SizedBox.shrink();
              }
              final bloc = BlocProvider.of<ProfileFillBloc>(context);
              bloc.add(OnChangeStepEvent(step: ProfileFillStep.firstName));
              return const SizedBox.shrink();
            },
            orElse: () => const SizedBox.shrink());
      },
    );
  }
}
