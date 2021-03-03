import 'package:dio/dio.dart';
import 'package:heropedia/models/heroes/heroes_model.dart';

class HeroRepository {
  HeroRepository();

  static const _baseUrl =
      'https://superheroapi.com/api/3778234892222363/search/cable';

  Future<Heroes> getHeroes() async {
    final response = await Dio().get(_baseUrl);
    return Heroes.fromJson(response.data);
  }
}
