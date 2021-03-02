import 'package:json_annotation/json_annotation.dart';
part 'hero_model.g.dart';

@JsonSerializable()
class Hero {
  final String response;

  @JsonKey(name: 'results-for')
  final String resultsFor;

  final List<Result> results;

  Hero(
    this.response,
    this.resultsFor,
    this.results,
  );

  factory Hero.fromJson(Map<String, dynamic> json) => _$HeroFromJson(json);

  Map<String, dynamic> toJson() => _$HeroToJson(this);

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

  // String get heroName {
  //   String heroName = '';
  //   results.forEach((element) {
  //     heroName = element?.heroName;
  //   });

  //   return heroName;
  // }
  // String get rarity => results?.first?.heroName;
  // String get timeAvailable => availability?.time;
  // String get northernMonths => availability?.northernMonths ?? '';
  // String get southernMonths => availability?.southernMonths ?? '';
  // String get location => availability?.location ?? 'Unknown';

  // bool get isAllDay => availability?.isAllDay ?? false;
  // bool get isAllYear => availability?.isAllYear ?? false;

  // String get getTimeAvailable => (isAllDay) ? 'All day' : timeAvailable;
  // String get getMonthAvailableNorth =>
  //     (isAllYear) ? 'All year' : northernMonths;
  // String get getMonthAvailableSouth =>
  //     (isAllYear) ? 'All year' : southernMonths;
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
