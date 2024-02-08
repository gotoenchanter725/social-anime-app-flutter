import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/domain/profile_fill/universities_usecase.dart';
import 'package:senpai/models/profile_fill/university/university_model.dart';

part 'universities_event.dart';
part 'universities_state.dart';

class UniversitiesBloc extends Bloc<UniversitiesEvent, UniversitiesState> {
  GetUniversitiesUseCase getUniversitiesUseCase =
      getIt<GetUniversitiesUseCase>();

  List<UniversityModel> universities = [];
  String searchText = '';

  UniversitiesBloc() : super(UniversitiesInitial()) {
    on<OnUniversitiesFetchEvent>((event, emit) async {
      if (event.searchText.isNotEmpty) {
        emit(LoadingUniversitiesState());
        try {
          final result = await getUniversitiesUseCase.fetchUniversities(
            event.searchText,
          );
          result.fold(
            (failure) {
              emit(ErrorUniversitiesState(
                message: R.strings.serverError,
                isEnabled: true,
              ));
            },
            (universityList) {
              emit(UniversitiesSucssesfulState());
              searchText = event.searchText;
              universities = universityList;
            },
          );
        } catch (_) {
          emit(ErrorUniversitiesState(
            message: R.strings.serverError,
            isEnabled: true,
          ));
        }
      } else {
        universities = [];
        searchText = '';
        emit(ErrorUniversitiesState(
          message: R.strings.serverError,
          isEnabled: false,
        ));
      }
    });
  }
}
