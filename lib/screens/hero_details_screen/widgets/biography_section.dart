import 'package:flutter/material.dart';
import 'package:heropedia/screens/global_widgets/info_text.dart';
import 'package:heropedia/models/heroes/heroes_model.dart';

class BiographySection extends StatelessWidget {
  const BiographySection({
    Key key,
    @required this.hero,
  }) : super(key: key);

  final Result hero;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InfoText(
              leading: 'Full name: ',
              trailing: hero.heroRealName,
            ),
            InfoText(
              leading: 'Gender: ',
              trailing: hero.heroGender,
            ),
            InfoText(
              leading: 'Place of birth: ',
              trailing: hero.heroBirthplace,
            ),
            InfoText(
              leading: 'Race: ',
              trailing: hero.heroRace,
            ),
            InfoText(
              leading: 'Height: ',
              trailing: hero.heroHeight,
            ),
            InfoText(
              leading: 'Eye color: ',
              trailing: hero.heroEyeColor,
            ),
            InfoText(
              leading: 'Hair color: ',
              trailing: hero.heroHairColor,
            ),
            InfoText(
              leading: 'Occupation: ',
              trailing: hero.heroOccupation,
            ),
            InfoText(
              leading: 'Base: ',
              trailing: hero.heroBase,
            ),
            InfoText(
              leading: 'Relatives: ',
              trailing: hero.heroRelatives,
            ),
          ],
        ),
      ),
    );
  }
}
