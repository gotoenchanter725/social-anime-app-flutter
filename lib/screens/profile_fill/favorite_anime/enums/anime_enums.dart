import 'package:senpai/data/text_constants.dart';

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
      const {
        AnimeGenresEnums.action: TextConstants.actionGenresTitle,
        AnimeGenresEnums.adventure: TextConstants.adventureGenresTitle,
        AnimeGenresEnums.drama: TextConstants.dramaGenresTitle,
        AnimeGenresEnums.ecchi: TextConstants.ecchiGenresTitle,
        AnimeGenresEnums.music: TextConstants.musicGenresTitle,
        AnimeGenresEnums.mecha: TextConstants.mechaGenresTitle,
        AnimeGenresEnums.horror: TextConstants.horrorGenresTitle,
        AnimeGenresEnums.fantasy: TextConstants.fantasyGenresTitle,
        AnimeGenresEnums.mahouShoujo: TextConstants.mahouShoujoGenresTitle,
        AnimeGenresEnums.psychological: TextConstants.psychologicalGenresTitle,
        AnimeGenresEnums.romance: TextConstants.romanceGenresTitle,
        AnimeGenresEnums.sciFi: TextConstants.sciFiGenresTitle,
        AnimeGenresEnums.sports: TextConstants.sportsGenresTitle,
        AnimeGenresEnums.comedy: TextConstants.comedyGenresTitle,
        AnimeGenresEnums.mystery: TextConstants.mysteryGenresTitle,
        AnimeGenresEnums.supernatural: TextConstants.supernaturalGenresTitle,
        AnimeGenresEnums.thriller: TextConstants.thrillerGenresTitle,
        AnimeGenresEnums.sliceOfLife: TextConstants.sliceOfLifeGenresTitle,
      }[this] ??
      '';
}
