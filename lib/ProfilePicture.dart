

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


class TreePicture extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300.0,
        height: 300.0,
        child: RawMaterialButton(
          fillColor: Colors.grey,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          elevation: 4.0,
          onPressed: () {},
        )
    );
  }

}