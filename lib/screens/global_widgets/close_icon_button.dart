import 'package:heropedia/constants/style.dart';
import 'package:flutter/material.dart';

class CloseIconButton extends StatelessWidget {
  const CloseIconButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 3,
      right: 5,
      child: Align(
        alignment: Alignment.topRight,
        child: FloatingActionButton(
          mini: true,
          elevation: 0,
          backgroundColor: kColorBlack.withOpacity(0.50),
          onPressed: () => Navigator.of(context).pop(),
          child: Icon(Icons.close),
        ),
      ),
    );
  }
}
