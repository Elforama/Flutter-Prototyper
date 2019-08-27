

import 'package:flutter/material.dart';

import 'ActionButton.dart';

class CameraScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.grey[400],
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Container(
              height: 200,
              child: ActionButton(
                iconData: Icons.camera_alt,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

}