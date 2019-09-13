import 'package:flutter/material.dart';

import 'UserFlows.dart';
import 'Utils.dart';
import 'mobile/MobileHome.dart';
import 'web/WebHome.dart';

class ResponsiveHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    if (Screen.isSmall(context)) {
      return MobileHome(userFlows: userFlowsV1);
    } else {
      return WebHome(userFlows: userFlowsV1);
    }
  }

}