


import 'package:flutter/material.dart';

class EditText extends StatelessWidget {

  final String hint;
  final Icon icon;

  EditText({this.hint, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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