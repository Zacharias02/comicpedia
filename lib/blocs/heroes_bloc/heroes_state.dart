part of 'heroes_bloc.dart';

abstract class HeroesState extends Equatable {
  const HeroesState();

  @override
  List<Object> get props => [];
}

class HeroesInitial extends HeroesState {}

class HeroesLoading extends HeroesState {}

class HeroesFetched extends HeroesState {
  final List<Result> heroResult;
  HeroesFetched({this.heroResult});

  @override
  List<Object> get props => [heroResult];
}

class HeroesFetchError extends HeroesState {
  final String errorMessage;
  HeroesFetchError({this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
