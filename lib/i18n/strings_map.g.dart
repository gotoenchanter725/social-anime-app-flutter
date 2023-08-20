part of 'strings.g.dart';

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'core.errors.others.no_item_found': return 'There is no data to show.';
			case 'core.errors.others.something_went_wrong': return 'Something went wrong and data couldn\'t loaded.';
			case 'core.errors.others.an_unknown_error': return 'An unknown error happened.';
			case 'core.errors.others.no_internet_connection': return 'Internet connectivity is not available.';
			case 'core.errors.others.server_failure': return 'Server failure encountered.';
			case 'core.errors.others.communication_error': return 'There was an error with our communication with the servers.';
			case 'onboarding.actions.skip': return 'Skip';
			case 'onboarding.onboarding_1.title': return 'Find';
			case 'onboarding.onboarding_1.subtitle': return 'your waifu';
			case 'onboarding.onboarding_2.title': return 'Anime';
			case 'onboarding.onboarding_2.subtitle': return 'lovers unite';
			case 'onboarding.onboarding_3.title': return 'Start';
			case 'onboarding.onboarding_3.subtitle': return 'matching';
			default: return null;
		}
	}
}
