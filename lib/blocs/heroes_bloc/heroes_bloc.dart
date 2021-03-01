import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:comicpedia/models/hero/hero_model.dart';
import 'package:comicpedia/repositories/hero_repository.dart';
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
        final Hero heroes = await heroRepository.getHeroes();

        yield HeroesFetched(heroResult: heroes?.heroList);
      } catch (err) {
        print(err.toString());
        yield HeroesFetchError(errorMessage: err.toString());
      }
    }
  }
}
