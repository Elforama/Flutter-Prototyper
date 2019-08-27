

import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 180.0,
        height: 180.0,
        child: RawMaterialButton(
          fillColor: Colors.grey,
          shape: CircleBorder(),
          elevation: 4.0,
          onPressed: () {},
        )
    );
  }

}