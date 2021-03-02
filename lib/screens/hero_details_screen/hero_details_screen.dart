import 'dart:ui';

import 'package:heropedia/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:heropedia/models/heroes/heroes_model.dart';
import 'package:heropedia/screens/hero_details_screen/widgets/hero_cover.dart';

class HeroDetailsScreen extends StatelessWidget {
  final Result hero;

  const HeroDetailsScreen({
    Key key,
    this.hero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeroCover(hero: hero),
        Expanded(
          child: DefaultTabController(
            length: 3,
            child: Scaffold(
              backgroundColor: kColorDarkGrey,
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(35.0),
                child: TabBar(
                  labelStyle: TextStyle(color: Colors.white),
                  // unselectedLabelColor: kColorDarkGrey,
                  tabs: <Widget>[
                    Tab(
                      child: Text(
                        'Description',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Chapters',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Comments',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  Text('LEFT'),
                  Text('RIGHT'),
                  Text('RIGHT'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
