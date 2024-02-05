import 'dart:io';

import 'package:intl/intl.dart';
import 'package:flutter/widgets.dart';
import 'package:senpai/l10n/generated/app_localizations.dart';

class R {
  static AppLocalizations get strings => _currentStrings!;
  static AppLocalizations? _currentStrings;

  static AppLocalizations stringsOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static Future<void> ensureInitialized() async {
    if (_currentStrings == null && Intl.defaultLocale != _currentLocale.languageCode) {
      final isSupportedLocale = AppLocalizations.delegate.isSupported(_currentLocale);
      _currentStrings = await AppLocalizations.delegate.load(switch (isSupportedLocale) {
        true => _currentLocale,
        false => AppLocalizations.supportedLocales.first,
      });
      Intl.defaultLocale = _currentLocale.languageCode;
    }
  }

  void invalidate() {
    _currentStrings = null;
  }

  static Locale get _currentLocale {
    var currentLocale = AppLocalizations.supportedLocales.first;
    final parts = Platform.localeName.split('_');
    final locale = Locale(parts.first);
    if (AppLocalizations.delegate.isSupported(locale)) {
      currentLocale = locale;
    }
    return currentLocale;
  }

  static Future<void> switchLocale(Locale locale) async {
    await _loadResources(locale);
  }

  static Future<void> _loadResources(Locale locale) async {
    _currentStrings = await AppLocalizations.delegate.load(locale);
    Intl.defaultLocale = locale.languageCode;
  }
}
