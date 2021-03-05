import 'dart:ui';
import 'package:heropedia/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:heropedia/models/heroes/heroes_model.dart';
import 'package:heropedia/screens/hero_details_screen/widgets/hero_cover.dart';
import 'package:heropedia/screens/hero_details_screen/widgets/power_stats_list_view.dart';
import 'package:heropedia/screens/hero_details_screen/widgets/others_section.dart';
import 'package:heropedia/screens/hero_details_screen/widgets/biography_section.dart';

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
                  labelStyle: kTextSemiBold,
                  unselectedLabelStyle: kTextRegular.copyWith(fontSize: 16),
                  unselectedLabelColor: kColorLightGrey2,
                  indicatorColor: kColorWhite,
                  tabs: <Widget>[
                    Tab(text: 'Powerstats'),
                    Tab(text: 'Biography'),
                    Tab(text: 'Others'),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  PowerStatListView(hero: hero),
                  BiographySection(hero: hero),
                  OthersSection(hero: hero),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
