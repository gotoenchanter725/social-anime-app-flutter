import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';
import 'package:senpai/l10n/local_key.dart';
import 'package:senpai/l10n/resources.dart';

part 'application_locale_bloc.freezed.dart';

part 'application_locale_event.dart';

part 'application_locale_state.dart';

@injectable
class ApplicationLocaleBloc extends Bloc<ApplicationLocaleEvent, ApplicationLocaleState> with HydratedMixin {
  ApplicationLocaleBloc() : super(const ApplicationLocaleState(null)) {
    on<SwitchApplicationLocaleEvent>((event, emit) {
      final locale = event.newLocale;
      emit(state.copyWith(locale: locale));
      unawaited(R.switchLocale(locale));
    });
  }

  @override
  ApplicationLocaleState? fromJson(Map<String, dynamic> json) {
    return ApplicationLocaleState(LocaleKeyExtension.parse(json['localeKey']).toLocale);
  }

  @override
  Map<String, dynamic>? toJson(ApplicationLocaleState state) {
    return {"localeKey" : state.locale?.languageCode ?? 'en'};
  }
}
