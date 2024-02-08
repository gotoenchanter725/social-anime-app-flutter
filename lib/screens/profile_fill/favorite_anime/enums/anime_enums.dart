import 'package:senpai/l10n/resources.dart';

enum AnimeGenresEnums {
  action,
  adventure,
  drama,
  ecchi,
  music,
  mecha,
  horror,
  fantasy,
  mahouShoujo,
  psychological,
  romance,
  sciFi,
  sports,
  comedy,
  mystery,
  supernatural,
  thriller,
  sliceOfLife;
}

extension AnimeGenresEnumsX on AnimeGenresEnums {
  String get genresString =>
      {
        AnimeGenresEnums.action: R.strings.actionGenresTitle,
        AnimeGenresEnums.adventure: R.strings.adventureGenresTitle,
        AnimeGenresEnums.drama: R.strings.dramaGenresTitle,
        AnimeGenresEnums.ecchi: R.strings.ecchiGenresTitle,
        AnimeGenresEnums.music: R.strings.musicGenresTitle,
        AnimeGenresEnums.mecha: R.strings.mechaGenresTitle,
        AnimeGenresEnums.horror: R.strings.horrorGenresTitle,
        AnimeGenresEnums.fantasy: R.strings.fantasyGenresTitle,
        AnimeGenresEnums.mahouShoujo: R.strings.mahouShoujoGenresTitle,
        AnimeGenresEnums.psychological: R.strings.psychologicalGenresTitle,
        AnimeGenresEnums.romance: R.strings.romanceGenresTitle,
        AnimeGenresEnums.sciFi: R.strings.sciFiGenresTitle,
        AnimeGenresEnums.sports: R.strings.sportsGenresTitle,
        AnimeGenresEnums.comedy: R.strings.comedyGenresTitle,
        AnimeGenresEnums.mystery: R.strings.mysteryGenresTitle,
        AnimeGenresEnums.supernatural: R.strings.supernaturalGenresTitle,
        AnimeGenresEnums.thriller: R.strings.thrillerGenresTitle,
        AnimeGenresEnums.sliceOfLife: R.strings.sliceOfLifeGenresTitle,
      }[this] ??
      '';

  String get englishGenresString =>
      {
        AnimeGenresEnums.action: R.englishStrings.actionGenresTitle,
        AnimeGenresEnums.adventure: R.englishStrings.adventureGenresTitle,
        AnimeGenresEnums.drama: R.englishStrings.dramaGenresTitle,
        AnimeGenresEnums.ecchi: R.englishStrings.ecchiGenresTitle,
        AnimeGenresEnums.music: R.englishStrings.musicGenresTitle,
        AnimeGenresEnums.mecha: R.englishStrings.mechaGenresTitle,
        AnimeGenresEnums.horror: R.englishStrings.horrorGenresTitle,
        AnimeGenresEnums.fantasy: R.englishStrings.fantasyGenresTitle,
        AnimeGenresEnums.mahouShoujo: R.englishStrings.mahouShoujoGenresTitle,
        AnimeGenresEnums.psychological: R.englishStrings.psychologicalGenresTitle,
        AnimeGenresEnums.romance: R.englishStrings.romanceGenresTitle,
        AnimeGenresEnums.sciFi: R.englishStrings.sciFiGenresTitle,
        AnimeGenresEnums.sports: R.englishStrings.sportsGenresTitle,
        AnimeGenresEnums.comedy: R.englishStrings.comedyGenresTitle,
        AnimeGenresEnums.mystery: R.englishStrings.mysteryGenresTitle,
        AnimeGenresEnums.supernatural: R.englishStrings.supernaturalGenresTitle,
        AnimeGenresEnums.thriller: R.englishStrings.thrillerGenresTitle,
        AnimeGenresEnums.sliceOfLife: R.englishStrings.sliceOfLifeGenresTitle,
      }[this] ??
      '';
}
