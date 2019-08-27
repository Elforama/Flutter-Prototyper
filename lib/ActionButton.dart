import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {

  final IconData iconData;
  final VoidCallback onPressed;
  final Color color;


  ActionButton({this.iconData, this.onPressed, this.color = Colors.green});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100.0,
        height: 100.0,
        child: RawMaterialButton(
          fillColor: color,
          shape: CircleBorder(),
          elevation: 4.0,
          child: Icon(iconData, size: 50, color: Colors.white,),
          onPressed: onPressed,
        ));
  }
}
