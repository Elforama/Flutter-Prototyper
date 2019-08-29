

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
            child: Padding(
              padding: const EdgeInsets.only(right: 42.0, top: 82),
              child: Icon(Icons.gps_off, color: Colors.red,)
            ),
            alignment: AlignmentDirectional.topEnd,
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