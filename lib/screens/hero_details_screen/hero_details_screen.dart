import 'dart:ui';

import 'package:heropedia/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:heropedia/models/heroes/heroes_model.dart';
import 'package:heropedia/screens/hero_details_screen/widgets/hero_cover.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

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
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        PowerStatIndicator(
                          percentage: hero.intelligencePercentage,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '2',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '3',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PowerStatIndicator extends StatelessWidget {
  final String centerText;
  final String image;
  final double percentage;

  const PowerStatIndicator({
    Key key,
    this.centerText,
    this.image,
    this.percentage = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      lineHeight: 22.0,
      percent: percentage,
      animation: true,
      animationDuration: 500,
      progressColor: kColorIntViolet,
      backgroundColor: kColorDarkrGreyLight,
      center: Text(
        'Intelligence: 80',
        style: kTextSemiBold.copyWith(fontSize: 14),
      ),
      leading: Container(
        height: 70,
        child: ClipPolygon(
          sides: 6,
          borderRadius: 5.0, // Default 0.0 degrees
          rotate: 90.0, // Default 0.0 degrees
          child: Image.asset(
            'assets/images/intelligence.png',
          ),
        ),
      ),
    );
  }
}
