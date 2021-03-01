part of 'heroes_bloc.dart';

abstract class HeroesEvent extends Equatable {
  const HeroesEvent();

  @override
  List<Object> get props => [];
}

class FetchHeroes extends HeroesEvent {}
