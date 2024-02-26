import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/user/blocs/update_user/update_user_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/l10n/resources.dart';
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
      child: PopScope(
        canPop: false,
        child: Scaffold(
          backgroundColor: $constants.palette.darkBlue,
          body: Stack(
            children: [
              const ProfileFillContent(),
              _buildUpdateUserListeners(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUpdateUserListeners() {
    return BlocListener<UpdateUserBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(
          failed: (error, result) {
            showSnackBarError(context, R.strings.serverError);
          },
          succeeded: (data, result) {
            final response = result.data;
            if (response == null) {
              logIt.wtf("A successful empty response just got set user");
              return;
            }
            dynamic model;
            try {
              model = response["updateUser"]["user"];
              final bloc = BlocProvider.of<ProfileFillBloc>(context);
              bloc.add(OnChangeStepEvent(step: ProfileFillStep.firstName));
            } catch (e) {
              logIt.error(
                  "Error accessing updateUser or user from response: $e");
              model = null;
            }
            if (model == null) {
              showSnackBarError(context, R.strings.nullUser);
              logIt.error("A user with error");
            }
          },
        );
      },
      child: BlocBuilder<UpdateUserBloc, MutationState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
