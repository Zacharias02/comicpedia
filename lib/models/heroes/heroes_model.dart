import 'package:json_annotation/json_annotation.dart';
part 'heroes_model.g.dart';

@JsonSerializable()
class Heroes {
  final String response;

  @JsonKey(name: 'results-for')
  final String resultsFor;

  final List<Result> results;

  Heroes(
    this.response,
    this.resultsFor,
    this.results,
  );

  factory Heroes.fromJson(Map<String, dynamic> json) => _$HeroesFromJson(json);

  Map<String, dynamic> toJson() => _$HeroesToJson(this);

  List<Result> get heroList => results;
}

@JsonSerializable()
class Result {
  final String response;

  final String id;

  @JsonKey(name: 'name')
  final String heroName;

  @JsonKey(name: 'powerstats')
  final PowerStats powerStats;

  final Biography biography;

  final Appearance appearance;

  final Work work;

  final Connections connections;

  @JsonKey(name: 'image')
  final HeroImage heroImage;

  Result(
    this.response,
    this.id,
    this.heroName,
    this.powerStats,
    this.biography,
    this.appearance,
    this.work,
    this.connections,
    this.heroImage,
  );

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);

  String get heroId => id ?? '';
  String get imageUrl => heroImage?.url;
  String get heroFullName => heroName ?? '';

  /* -- Power stats -- */
  String get firstAppearance => (biography?.firstAppearance != 'null' &&
          biography?.firstAppearance != '-')
      ? biography?.firstAppearance
      : 'Unknown';
  String get intelligenceCenterText => (powerStats?.intelligence != 'null')
      ? 'Intelligence: ${powerStats?.intelligence}'
      : 'Intelligence: N/A';
  String get strengthCenterText => (powerStats?.strength != 'null')
      ? 'Strength: ${powerStats?.strength}'
      : 'Strength: N/A';
  String get speedCenterText => (powerStats?.speed != 'null')
      ? 'Speed: ${powerStats?.speed}'
      : 'Speed: N/A';
  String get durabilityCenterText => (powerStats?.durability != 'null')
      ? 'Durability: ${powerStats?.durability}'
      : 'Durability: N/A';
  String get powerCenterText => (powerStats?.power != 'null')
      ? 'Power: ${powerStats?.power}'
      : 'Power: N/A';
  String get combatCenterText => (powerStats?.combat != 'null')
      ? 'Combat: ${powerStats?.combat}'
      : 'Combat: N/A';

  double get intelligencePercentage => (powerStats?.intelligence != 'null')
      ? double.parse(powerStats?.intelligence) * 0.01
      : 0;
  double get strengthPercentage => (powerStats?.strength != 'null')
      ? double.parse(powerStats?.strength) * 0.01
      : 0;
  double get speedPercentage => (powerStats?.speed != 'null')
      ? double.parse(powerStats?.speed) * 0.01
      : 0;
  double get durabilityPercentage => (powerStats?.durability != 'null')
      ? double.parse(powerStats?.durability) * 0.01
      : 0;
  double get powerPercentage => (powerStats?.power != 'null')
      ? double.parse(powerStats?.power) * 0.01
      : 0;
  double get combatPercentage => (powerStats?.combat != 'null')
      ? double.parse(powerStats?.combat) * 0.01
      : 0;
  /* -- End power stats -- */

  /* -- Biography -- */
  String get heroRealName =>
      (biography?.fullName != '') ? biography?.fullName : 'Unknown';
  String get heroAlterEgo =>
      (biography?.alterEgos != 'null') ? biography?.alterEgos : 'N/A';
  String get heroAliases =>
      (biography.aliases.length != 0 && biography?.aliases?.first != '-')
          ? biography.aliases.join(", ")
          : 'No aliases found.';
  String get heroBirthplace =>
      (biography?.placeOfBirth != '' && biography?.placeOfBirth != '-')
          ? biography?.placeOfBirth
          : 'Unknown';
  String get publisherName =>
      (biography?.publisher != 'null' && biography?.publisher != '')
          ? biography?.publisher
          : 'Unknown';
  String get heroAlignment => (biography?.alignment != 'null')
      ? "${biography.alignment[0].toUpperCase()}${biography.alignment.substring(1)}"
      : 'Unknown';
  /* -- End biography -- */

  /* -- Appearance -- */
  String get heroGender =>
      (appearance?.gender != 'null') ? appearance?.gender : 'Unknown';
  String get heroRace =>
      (appearance?.race != 'null') ? appearance?.race : 'Unknown';
  String get heroHeight =>
      (appearance.height.length != 0 && appearance?.height?.first != '-')
          ? appearance.height.join(" / ")
          : 'Unknown';
  String get heroWeight =>
      (appearance.weight.length != 0 && appearance?.weight?.first[0] != '-')
          ? appearance.weight.join(" / ")
          : 'Unknown';
  String get heroEyeColor => (appearance?.eyeColor != 'null')
      ? "${appearance.eyeColor[0].toUpperCase()}${appearance.eyeColor.substring(1)}"
      : 'Unknown';
  String get heroHairColor => (appearance?.hairColor != 'null')
      ? "${appearance.hairColor[0].toUpperCase()}${appearance.hairColor.substring(1)}"
      : 'Unknown';
  /* -- End appearance -- */

  /* -- Work -- */
  String get heroOccupation =>
      (work?.occupation != 'null' && work?.occupation != '-')
          ? work?.occupation
          : 'Unknown';
  String get heroBase =>
      (work?.base != 'null' && work?.base != '-') ? work?.base : 'Unknown';
  /* -- End work -- */

  /* -- Connections -- */
  String get heroGroupAffiliation => (connections?.groupAffiliation != 'null' &&
          connections?.groupAffiliation != '-')
      ? connections?.groupAffiliation
      : 'Unknown';
  String get heroRelatives =>
      (connections?.relatives != 'null' && connections?.relatives != '-')
          ? connections?.relatives
          : 'Unknown';
  /* -- End connections -- */
}

@JsonSerializable()
class PowerStats {
  final String intelligence;
  final String strength;
  final String speed;
  final String durability;
  final String power;
  final String combat;

  PowerStats(
    this.intelligence,
    this.strength,
    this.speed,
    this.durability,
    this.power,
    this.combat,
  );

  factory PowerStats.fromJson(Map<String, dynamic> json) =>
      _$PowerStatsFromJson(json);

  Map<String, dynamic> toJson() => _$PowerStatsToJson(this);
}

@JsonSerializable()
class Biography {
  @JsonKey(name: 'full-name')
  final String fullName;

  @JsonKey(name: 'alter-egos')
  final String alterEgos;

  final List<String> aliases;

  @JsonKey(name: 'place-of-birth')
  final String placeOfBirth;

  @JsonKey(name: 'first-appearance')
  final String firstAppearance;

  final String publisher;

  final String alignment;

  Biography(
    this.fullName,
    this.alterEgos,
    this.aliases,
    this.placeOfBirth,
    this.firstAppearance,
    this.publisher,
    this.alignment,
  );

  factory Biography.fromJson(Map<String, dynamic> json) =>
      _$BiographyFromJson(json);

  Map<String, dynamic> toJson() => _$BiographyToJson(this);
}

@JsonSerializable()
class Appearance {
  final String gender;
  final String race;
  final List<String> height;
  final List<String> weight;

  @JsonKey(name: 'eye-color')
  final String eyeColor;

  @JsonKey(name: 'hair-color')
  final String hairColor;

  Appearance(
    this.gender,
    this.race,
    this.height,
    this.weight,
    this.eyeColor,
    this.hairColor,
  );

  factory Appearance.fromJson(Map<String, dynamic> json) =>
      _$AppearanceFromJson(json);

  Map<String, dynamic> toJson() => _$AppearanceToJson(this);
}

@JsonSerializable()
class Work {
  final String occupation;
  final String base;

  Work(this.occupation, this.base);

  factory Work.fromJson(Map<String, dynamic> json) => _$WorkFromJson(json);

  Map<String, dynamic> toJson() => _$WorkToJson(this);
}

@JsonSerializable()
class Connections {
  @JsonKey(name: 'group-affiliation')
  final String groupAffiliation;

  final String relatives;

  Connections(this.groupAffiliation, this.relatives);

  factory Connections.fromJson(Map<String, dynamic> json) =>
      _$ConnectionsFromJson(json);

  Map<String, dynamic> toJson() => _$ConnectionsToJson(this);
}

@JsonSerializable()
class HeroImage {
  final String url;

  HeroImage(this.url);

  factory HeroImage.fromJson(Map<String, dynamic> json) =>
      _$HeroImageFromJson(json);

  Map<String, dynamic> toJson() => _$HeroImageToJson(this);
}
