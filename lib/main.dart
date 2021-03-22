import 'package:heropedia/blocs/heroes_bloc/heroes_bloc.dart';
import 'package:heropedia/repositories/hero_repository.dart';
import 'package:heropedia/screens/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/heroes_bloc/heroes_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  HeroRepository heroRepository = HeroRepository();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HeroesBloc>(
      create: (context) => HeroesBloc(heroRepository),
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
