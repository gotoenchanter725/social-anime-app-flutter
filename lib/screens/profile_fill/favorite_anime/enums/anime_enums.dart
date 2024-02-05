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
}
