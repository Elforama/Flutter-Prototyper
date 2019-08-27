


import 'package:flutter/material.dart';

class EditText extends StatelessWidget {

  final String hint;
  final IconData icon;

  EditText({this.hint, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(),
          icon: Icon(icon)
      ),
    );
  }

}