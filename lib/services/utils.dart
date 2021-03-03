import 'package:flutter/material.dart';
import 'package:heropedia/constants/style.dart';

class Utils {
  Color getColorByPublisherName(String publisherName) {
    Color color;

    if (publisherName.contains('DC')) {
      color = kColorDCBlue;
    } else if (publisherName.contains('Marvel')) {
      color = kColorMarvelRed;
    }

    return color;
  }
}
