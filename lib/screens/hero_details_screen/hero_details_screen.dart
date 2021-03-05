import 'dart:ui';
import 'package:heropedia/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:heropedia/models/heroes/heroes_model.dart';
import 'package:heropedia/screens/hero_details_screen/widgets/hero_cover.dart';
import 'package:heropedia/screens/hero_details_screen/widgets/power_stats_indicator.dart';
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
                  ListView(
                    padding: EdgeInsets.all(8.0),
                    children: [
                      PowerStatIndicator(
                        centerText: hero.intelligenceCenterText,
                        percentage: hero.intelligencePercentage,
                        imageUrl: 'assets/images/intelligence.png',
                        progressColor: kColorIntViolet,
                      ),
                      PowerStatIndicator(
                        centerText: hero.strengthCenterText,
                        percentage: hero.strengthPercentage,
                        imageUrl: 'assets/images/strength.png',
                        progressColor: kColorStrOrg,
                      ),
                      PowerStatIndicator(
                        centerText: hero.speedCenterText,
                        percentage: hero.speedPercentage,
                        imageUrl: 'assets/images/speed.png',
                        progressColor: kColorSpdGreen,
                      ),
                      PowerStatIndicator(
                        centerText: hero.durabilityCenterText,
                        percentage: hero.durabilityPercentage,
                        imageUrl: 'assets/images/durability.png',
                        progressColor: kColorDurRed,
                      ),
                      PowerStatIndicator(
                        centerText: hero.powerCenterText,
                        percentage: hero.powerPercentage,
                        imageUrl: 'assets/images/power.png',
                        progressColor: kColorIntViolet,
                      ),
                      PowerStatIndicator(
                        centerText: hero.combatCenterText,
                        percentage: hero.combatPercentage,
                        imageUrl: 'assets/images/combat.png',
                        progressColor: kColorCbtOrg,
                      ),
                    ],
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
