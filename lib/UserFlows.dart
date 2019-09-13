import 'package:flutter/widgets.dart';

import 'AddTreeScreen.dart';
import 'HomeScreen.dart';
import 'LoginScreen.dart';
import 'MapScreen.dart';
import 'SyncScreen.dart';

class UserFlow {

  final String name;
  final WidgetBuilder builder;

  UserFlow({this.name, this.builder});

}

final List<UserFlow> userFlowsV1 = [
  UserFlow(
    name: "From Login",
    builder: (context) => LoginScreen()
  ),
  UserFlow(
      name: "From Home",
      builder: (context) => HomeScreen()
  ),
  UserFlow(
      name: "Plant Tree",
      builder: (context) => AddTreeScreen()
  ),
  UserFlow(
      name: "Map",
      builder: (context) => MapScreen()
  ),
  UserFlow(
      name: "Sync",
      builder: (context) => SyncScreen()
  ),
];