import 'package:heropedia/constants/style.dart';
import 'package:flutter/material.dart';

class HeaderContent extends StatelessWidget {
  const HeaderContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        child: Column(
          children: [
            Text(
              'Pick your superhero'.toUpperCase(),
              style: kTextHeader1,
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'You can search all superheroes and villians data from all universes.',
                style: kTextRegular,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
