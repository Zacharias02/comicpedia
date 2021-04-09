import 'package:flutter/material.dart';
import 'package:heropedia/constants/style.dart';

class EmptyErrorPlaceholder extends StatelessWidget {
  final IconData iconData;
  final String message;

  const EmptyErrorPlaceholder({
    Key key,
    this.iconData,
    this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Icon(
                iconData,
                color: kColorLightGrey,
                size: 90.0,
              ),
            ),
            Text(
              message,
              style: kTextSemiBold.copyWith(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
