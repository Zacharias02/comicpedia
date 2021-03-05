import 'package:flutter/material.dart';
import 'package:heropedia/constants/style.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

class PowerStatIndicator extends StatelessWidget {
  final String centerText;
  final String imageUrl;
  final double percentage;
  final Color progressColor;

  const PowerStatIndicator({
    Key key,
    this.centerText,
    this.imageUrl,
    this.percentage = 0,
    this.progressColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      lineHeight: 22.0,
      percent: percentage,
      animation: true,
      animationDuration: 500,
      progressColor: progressColor,
      backgroundColor: kColorDarkrGreyLight,
      center: Text(
        centerText,
        style: kTextSemiBold.copyWith(fontSize: 14),
      ),
      leading: Container(
        height: 55,
        child: ClipPolygon(
          sides: 6,
          borderRadius: 5.0,
          rotate: 90.0,
          child: Image.asset(imageUrl),
        ),
      ),
    );
  }
}
