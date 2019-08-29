


import 'package:flutter/material.dart';

class EditText extends StatelessWidget {

  final String hint;
  final Icon icon;
  final bool autoFocus;

  EditText({this.hint, this.icon, this.autoFocus = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autoFocus,
      decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(94),
          ),
          icon: icon
      ),
    );
  }

}