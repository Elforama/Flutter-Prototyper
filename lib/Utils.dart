import 'package:flutter/material.dart';

class Screen {

  //Large screen is any screen whose width is more than 1200 pixels
  static bool isLarge(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }
  //Small screen is any screen whose width is less than 800 pixels
  static bool isSmall(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }
  //Medium screen is any screen whose width is less than 1200 pixels,
  //and more than 800 pixels
  static bool isMedium(BuildContext context) {
    return MediaQuery.of(context).size.width > 800 && MediaQuery.of(context).size.width < 1200;
  }
}