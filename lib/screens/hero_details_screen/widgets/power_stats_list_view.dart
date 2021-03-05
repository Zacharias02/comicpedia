import 'package:heropedia/screens/hero_details_screen/widgets/power_stats_indicator.dart';
import 'package:flutter/material.dart';
import 'package:heropedia/models/heroes/heroes_model.dart';
import 'package:heropedia/constants/style.dart';

class PowerStatListView extends StatelessWidget {
  final Result hero;

  const PowerStatListView({
    Key key,
    @required this.hero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
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
    );
  }
}
