

import 'package:flutter/material.dart';

import 'ActionButton.dart';
import 'EditText.dart';
import 'ProfilePicture.dart';

class AddTreeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Add Tree"),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 32,),
          Center(
            child: TreePicture()
          ),
          SizedBox(height: 32,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: EditText(
              hint: "Notes",
            ),
          ),
          SizedBox(height: 100,),
          ActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
            iconData: Icons.check,
          )
        ],
      ),
    );
  }

}