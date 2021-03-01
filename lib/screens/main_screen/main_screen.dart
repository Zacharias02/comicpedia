import 'package:comicpedia/screens/main_screen/widgets/hero_listing.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final String title;

  const MainScreen({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: HeroListing(),
    );
  }
}
