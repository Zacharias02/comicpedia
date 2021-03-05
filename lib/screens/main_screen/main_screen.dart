import 'package:heropedia/constants/style.dart';
import 'package:heropedia/screens/main_screen/widgets/header_content.dart';
import 'package:heropedia/screens/main_screen/widgets/hero_listing.dart';
import 'package:heropedia/screens/main_screen/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class MainScreen extends StatelessWidget {
  final String title;

  const MainScreen({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorDarkGrey,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar(),
            HeaderContent(),
            HeroListing(),
          ],
        ),
      ),
    );
  }
}
