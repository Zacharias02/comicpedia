import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heropedia/constants/style.dart';

class SnackBarServices {
  SnackBarServices();

  void removeSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
  }

  void showSnackBar(BuildContext context, {String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message, style: kTextLight),
      ),
    );
  }
}
