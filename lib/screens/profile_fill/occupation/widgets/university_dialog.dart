import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/core/widgets/senpai_input.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile_fill/occupation/bloc/occupation_bloc.dart';
import 'package:senpai/screens/profile_fill/occupation/bloc/universities_bloc/universities_bloc.dart';
import 'package:senpai/screens/profile_fill/widgets/custom_close_button.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';
import 'package:easy_debounce/easy_debounce.dart';

class UniversityDialog extends StatelessWidget {
  const UniversityDialog({super.key});

  void _onTapUniversity(BuildContext context, String name) {
    final blocOccupation = BlocProvider.of<OccupationBloc>(context);
    blocOccupation.add(
      OnOccupationInitEvent(
        school: name,
        occupation: '',
      ),
    );
    context.router.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            vertical: $constants.corners.sm,
            horizontal: $constants.insets.md,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: $constants.insets.sm,
          ),
          height: getSize(context).height / 2,
          decoration: BoxDecoration(
            color: $constants.palette.appBackground,
            borderRadius: BorderRadius.circular($constants.insets.sm),
          ),
          child: Column(
            children: [
              SizedBox(
                height: $constants.insets.xs,
              ),
              _buildTextInput(context),
              SizedBox(
                height: $constants.insets.xs,
              ),
              Expanded(
                child: _buildUniversityList(context),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: $constants.insets.sm,
          child: _closeButton(context),
        ),
      ],
    );
  }

  Widget _closeButton(BuildContext context) {
    return CustomCloseButton(
      borderColor: $constants.palette.black.withOpacity(0.6),
      backgroundColor: $constants.palette.appBackground,
      onTapButton: () {
        context.router.pop();
      },
    );
  }

  Widget _buildTextInput(BuildContext context) {
    final bloc = BlocProvider.of<OccupationBloc>(context);
    final blocUniversities = BlocProvider.of<UniversitiesBloc>(context);

    return BlocConsumer<OccupationBloc, OccupationState>(
      listenWhen: (_, currState) => currState is ValidUniversityState,
      listener: (context, state) {
        blocUniversities.add(
          OnUniversitiesFetchEvent(
            searchText: bloc.universityController.text,
          ),
        );
      },
      builder: (context, state) {
        return SenpaiInput(
          placeholder: R.strings.universityName,
          controller: bloc.universityController,
          onTextChanged: (String university) {
            EasyDebounce.debounce(
              'OnUniversityChangedEvent',
              const Duration(milliseconds: 1000),
              () {
                bloc.add(OnUniversityChangedEvent(university: university));
              },
            );
          },
          errorText: R.strings.invalidUniversityNameError,
          isError: state is ErrorUniversityState ? state.isEnabled : false,
          isValid: state is ValidUniversityState ? true : bloc.universityController.text.isNotEmpty,
        );
      },
    );
  }

  Widget _buildUniversityList(BuildContext context) {
    final bloc = BlocProvider.of<UniversitiesBloc>(context);

    return BlocBuilder<UniversitiesBloc, UniversitiesState>(
      builder: (context, state) {
        final errorMessage =
            state is ErrorUniversitiesState && state.isEnabled ? state.message : '';
        if (errorMessage.isNotEmpty) {
          return Center(child: Text(errorMessage));
        }

        if (state is LoadingUniversitiesState) {
          return const SenpaiLoading();
        }

        if (bloc.searchText.isNotEmpty && bloc.universities.isEmpty) {
          return Center(
            child: Text(R.strings.noUniversityFound),
          );
        }

        return ListView.builder(
          itemCount: bloc.universities.length,
          itemBuilder: (context, index) {
            final university = bloc.universities[index];
            return ListTile(
              onTap: () => _onTapUniversity(context, university.name ?? ''),
              title: Text.rich(
                updateTextStyle(
                  university.name ?? '',
                  bloc.searchText,
                  getTextTheme(context).titleSmall,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
