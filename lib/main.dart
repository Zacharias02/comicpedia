import 'package:comicpedia/blocs/heroes_bloc/heroes_bloc.dart';
import 'package:comicpedia/repositories/hero_repository.dart';
import 'package:comicpedia/screens/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  HeroRepository heroRepository;
  HeroesBloc heroesBloc;

  @override
  void initState() {
    heroRepository = HeroRepository();
    heroesBloc = HeroesBloc(heroRepository);

    heroesBloc.add(FetchHeroes());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HeroesBloc>(
      create: (context) => heroesBloc,
      child: MaterialApp(
        title: 'Comicpedia',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MainScreen(title: 'Comicpedia'),
      ),
    );
  }
}
