import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:heropedia/models/heroes/heroes_model.dart';
import 'package:heropedia/repositories/hero_repository.dart';
import 'package:equatable/equatable.dart';

part 'heroes_event.dart';
part 'heroes_state.dart';

class HeroesBloc extends Bloc<HeroesEvent, HeroesState> {
  final HeroRepository heroRepository;

  HeroesBloc(this.heroRepository) : super(HeroesInitial());

  @override
  Stream<HeroesState> mapEventToState(
    HeroesEvent event,
  ) async* {
    if (event is FetchHeroes) {
      yield HeroesLoading();

      try {
        final Heroes heroes = await heroRepository.getHeroes(event.searchKey);

        if (heroes.response != 'error') {
          yield HeroesFetched(heroResult: heroes?.heroList);
        } else {
          print('error');
          yield HeroesFetchError(
            errorMessage: '${event.searchKey} is not exists.',
          );
        }
      } catch (err) {
        print(err.toString());
        yield HeroesFetchError(errorMessage: err.toString());
      }
    }
  }
}
