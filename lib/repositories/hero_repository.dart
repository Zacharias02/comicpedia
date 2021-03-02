import 'package:heropedia/models/hero/hero_model.dart';
import 'package:dio/dio.dart';

class HeroRepository {
  HeroRepository();

  static const _baseUrl =
      'https://superheroapi.com/api/3778234892222363/search/man';

  Future<Hero> getHeroes() async {
    final response = await Dio().get(_baseUrl);
    return Hero.fromJson(response.data);
  }
}
