part of 'strings.g.dart';

// Path: <root>
class _StringsEn implements BaseTranslations<AppLocale, _StringsEn> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _StringsEn _root = this; // ignore: unused_field

	// Translations
	late final _StringsCoreEn core = _StringsCoreEn._(_root);
	late final _StringsOnboardingEn onboarding = _StringsOnboardingEn._(_root);
}

// Path: core
class _StringsCoreEn {
	_StringsCoreEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	late final _StringsCoreErrorsEn errors = _StringsCoreErrorsEn._(_root);
}

// Path: onboarding
class _StringsOnboardingEn {
	_StringsOnboardingEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	late final _StringsOnboardingActionsEn actions = _StringsOnboardingActionsEn._(_root);
	late final _StringsOnboardingOnboarding1En onboarding_1 = _StringsOnboardingOnboarding1En._(_root);
	late final _StringsOnboardingOnboarding2En onboarding_2 = _StringsOnboardingOnboarding2En._(_root);
	late final _StringsOnboardingOnboarding3En onboarding_3 = _StringsOnboardingOnboarding3En._(_root);
}

// Path: core.errors
class _StringsCoreErrorsEn {
	_StringsCoreErrorsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	late final _StringsCoreErrorsOthersEn others = _StringsCoreErrorsOthersEn._(_root);
}

// Path: onboarding.actions
class _StringsOnboardingActionsEn {
	_StringsOnboardingActionsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get skip => 'Skip';
}

// Path: onboarding.onboarding_1
class _StringsOnboardingOnboarding1En {
	_StringsOnboardingOnboarding1En._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Find';
	String get subtitle => 'your waifu';
}

// Path: onboarding.onboarding_2
class _StringsOnboardingOnboarding2En {
	_StringsOnboardingOnboarding2En._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Anime';
	String get subtitle => 'lovers unite';
}

// Path: onboarding.onboarding_3
class _StringsOnboardingOnboarding3En {
	_StringsOnboardingOnboarding3En._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Start';
	String get subtitle => 'matching';
}

// Path: core.errors.others
class _StringsCoreErrorsOthersEn {
	_StringsCoreErrorsOthersEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get no_item_found => 'There is no data to show.';
	String get something_went_wrong => 'Something went wrong and data couldn\'t loaded.';
	String get an_unknown_error => 'An unknown error happened.';
	String get no_internet_connection => 'Internet connectivity is not available.';
	String get server_failure => 'Server failure encountered.';
	String get communication_error => 'There was an error with our communication with the servers.';
}
