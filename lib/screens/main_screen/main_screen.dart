import 'package:heropedia/constants/style.dart';
import 'package:heropedia/screens/global_widgets/reactive_input_field.dart';
import 'package:heropedia/screens/main_screen/widgets/hero_listing.dart';
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
    final form = FormGroup({
      'heroSearchKey': FormControl(),
    });

    return Scaffold(
      backgroundColor: kColorDarkGrey,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReactiveForm(
              formGroup: form,
              child: ReactiveInputField(
                formControlName: 'heroSearchKey',
                prefixIcon: Icon(
                  Icons.search,
                  color: kColorLightGrey,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                child: Column(
                  children: [
                    Text(
                      'Pick your superhero'.toUpperCase(),
                      style: TextStyle(
                        color: kColorWhite,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        'You can search all superheroes and villians data from all universes.',
                        style: TextStyle(
                          color: kColorWhite,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            HeroListing(),
          ],
        ),
      ),
    );
  }
}
