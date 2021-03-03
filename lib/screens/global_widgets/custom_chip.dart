import 'package:flutter/material.dart';
import 'package:heropedia/constants/style.dart';

class CustomChip extends StatelessWidget {
  final String content;
  final EdgeInsetsGeometry padding;
  final Color color;

  const CustomChip({
    Key key,
    @required this.content,
    this.padding = const EdgeInsets.only(right: 4.0, bottom: 5.0),
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.0, bottom: 5.0),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          padding: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            color: (color == null) ? kColorDarkGrey.withOpacity(0.75) : color,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Text(
            content,
            style: kTextSemiBold.copyWith(fontSize: 14),
          ),
        ),
      ),
    );
  }
}
