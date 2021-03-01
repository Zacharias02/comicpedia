// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hero _$HeroFromJson(Map<String, dynamic> json) {
  return Hero(
    json['response'] as String,
    json['results-for'] as String,
    (json['results'] as List)
        ?.map((e) =>
            e == null ? null : Result.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$HeroToJson(Hero instance) => <String, dynamic>{
      'response': instance.response,
      'results-for': instance.resultsFor,
      'results': instance.results,
    };

Result _$ResultFromJson(Map<String, dynamic> json) {
  return Result(
    json['response'] as String,
    json['id'] as String,
    json['name'] as String,
    json['powerstats'] == null
        ? null
        : PowerStats.fromJson(json['powerstats'] as Map<String, dynamic>),
    json['biography'] == null
        ? null
        : Biography.fromJson(json['biography'] as Map<String, dynamic>),
    json['appearance'] == null
        ? null
        : Appearance.fromJson(json['appearance'] as Map<String, dynamic>),
    json['work'] == null
        ? null
        : Work.fromJson(json['work'] as Map<String, dynamic>),
    json['connections'] == null
        ? null
        : Connections.fromJson(json['connections'] as Map<String, dynamic>),
    json['image'] == null
        ? null
        : HeroImage.fromJson(json['image'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'response': instance.response,
      'id': instance.id,
      'name': instance.heroName,
      'powerstats': instance.powerStats,
      'biography': instance.biography,
      'appearance': instance.appearance,
      'work': instance.work,
      'connections': instance.connections,
      'image': instance.heroImage,
    };

PowerStats _$PowerStatsFromJson(Map<String, dynamic> json) {
  return PowerStats(
    json['intelligence'] as String,
    json['strength'] as String,
    json['speed'] as String,
    json['durability'] as String,
    json['power'] as String,
    json['combat'] as String,
  );
}

Map<String, dynamic> _$PowerStatsToJson(PowerStats instance) =>
    <String, dynamic>{
      'intelligence': instance.intelligence,
      'strength': instance.strength,
      'speed': instance.speed,
      'durability': instance.durability,
      'power': instance.power,
      'combat': instance.combat,
    };

Biography _$BiographyFromJson(Map<String, dynamic> json) {
  return Biography(
    json['full-name'] as String,
    json['alter-egos'] as String,
    (json['aliases'] as List)?.map((e) => e as String)?.toList(),
    json['place-of-birth'] as String,
    json['first-appearance'] as String,
    json['publisher'] as String,
    json['alignment'] as String,
  );
}

Map<String, dynamic> _$BiographyToJson(Biography instance) => <String, dynamic>{
      'full-name': instance.fullName,
      'alter-egos': instance.alterEgos,
      'aliases': instance.aliases,
      'place-of-birth': instance.placeOfBirth,
      'first-appearance': instance.firstAppearance,
      'publisher': instance.publisher,
      'alignment': instance.alignment,
    };

Appearance _$AppearanceFromJson(Map<String, dynamic> json) {
  return Appearance(
    json['gender'] as String,
    json['race'] as String,
    (json['height'] as List)?.map((e) => e as String)?.toList(),
    (json['weight'] as List)?.map((e) => e as String)?.toList(),
    json['eye-color'] as String,
    json['hair-color'] as String,
  );
}

Map<String, dynamic> _$AppearanceToJson(Appearance instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'race': instance.race,
      'height': instance.height,
      'weight': instance.weight,
      'eye-color': instance.eyeColor,
      'hair-color': instance.hairColor,
    };

Work _$WorkFromJson(Map<String, dynamic> json) {
  return Work(
    json['occupation'] as String,
    json['base'] as String,
  );
}

Map<String, dynamic> _$WorkToJson(Work instance) => <String, dynamic>{
      'occupation': instance.occupation,
      'base': instance.base,
    };

Connections _$ConnectionsFromJson(Map<String, dynamic> json) {
  return Connections(
    json['group-affiliation'] as String,
    json['relatives'] as String,
  );
}

Map<String, dynamic> _$ConnectionsToJson(Connections instance) =>
    <String, dynamic>{
      'group-affiliation': instance.groupAffiliation,
      'relatives': instance.relatives,
    };

HeroImage _$HeroImageFromJson(Map<String, dynamic> json) {
  return HeroImage(
    json['url'] as String,
  );
}

Map<String, dynamic> _$HeroImageToJson(HeroImage instance) => <String, dynamic>{
      'url': instance.url,
    };
