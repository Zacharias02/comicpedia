import 'package:flutter/material.dart';
import 'package:heropedia/constants/style.dart';

class InfoText extends StatelessWidget {
  final String leading;
  final String trailing;

  const InfoText({
    Key key,
    this.leading,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: RichText(
        text: TextSpan(
          style: kTextRegular.copyWith(fontSize: 16),
          children: [
            TextSpan(text: leading, style: kTextBold),
            TextSpan(text: trailing),
          ],
        ),
      ),
    );
  }
}
