part of 'application_locale_bloc.dart';

@immutable
abstract class ApplicationLocaleEvent {}

class SwitchApplicationLocaleEvent extends ApplicationLocaleEvent {
  final Locale newLocale;

  SwitchApplicationLocaleEvent({required this.newLocale});
}

class InitApplicationLocaleEvent extends ApplicationLocaleEvent {}