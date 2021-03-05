import 'package:flutter/material.dart';
import 'package:heropedia/screens/global_widgets/info_text.dart';
import 'package:heropedia/models/heroes/heroes_model.dart';

class OthersSection extends StatelessWidget {
  final Result hero;

  const OthersSection({
    Key key,
    @required this.hero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InfoText(
              leading: 'Alter egos: ',
              trailing: hero.heroAlterEgo,
            ),
            InfoText(
              leading: 'Aliases: ',
              trailing: hero.heroAliases,
            ),
            InfoText(
              leading: 'First appearance: ',
              trailing: hero.firstAppearance,
            ),
            InfoText(
              leading: 'Publisher: ',
              trailing: hero.publisherName,
            ),
            InfoText(
              leading: 'Alignment: ',
              trailing: hero.heroAlignment,
            ),
          ],
        ),
      ),
    );
  }
}
