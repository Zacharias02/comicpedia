import 'package:heropedia/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ReactiveInputField extends StatelessWidget {
  final String formControlName;
  final String hintText;
  final Icon prefixIcon;

  const ReactiveInputField({
    Key key,
    @required this.formControlName,
    this.hintText = 'Search',
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 20, 8, 0),
      child: ReactiveTextField(
        formControlName: formControlName,
        style: TextStyle(
          color: kColorWhite,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: TextStyle(
            color: kColorLightGrey,
          ),
          prefixIcon: prefixIcon,
          filled: true,
          fillColor: kColorDarkrGreyLight,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: kColorDarkrGreyLight),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: kColorLightGrey),
          ),
        ),
      ),
    );
  }
}
