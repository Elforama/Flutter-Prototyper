


import 'package:flutter/material.dart';

import 'ActionButton.dart';

class LongButtonContainer extends StatelessWidget {

  final Color backgroundColor;
  final Color actionColor;
  final VoidCallback onPressed;
  final IconData icon;
  final AlignmentDirectional buttonAlignment;

  LongButtonContainer({this.backgroundColor, this.actionColor, this.onPressed, this.icon, this.buttonAlignment = AlignmentDirectional.centerEnd});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1/0,
      height: 130,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(24)
      ),
      child: Align(
        alignment: buttonAlignment,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ActionButton(
            iconData: icon,
            onPressed: onPressed,
            color: actionColor,
          ),
        ),
      ),
    );
  }

}