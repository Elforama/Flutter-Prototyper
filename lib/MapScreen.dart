import 'package:flutter/material.dart';

import 'ActionButton.dart';

class MapScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Map"),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.grey,
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: ActionButton(
                iconData: Icons.gps_fixed,
                color: Colors.green,
                onPressed: () {},
              ),
            ),
            alignment: AlignmentDirectional.bottomCenter,
          )
        ],
      ),
    );
  }

}