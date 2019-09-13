
import 'package:flutter/material.dart';

import '../UserFlows.dart';

class WebHome extends StatelessWidget {

  final List<UserFlow> userFlows;

  WebHome({this.userFlows});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: Colors.grey[700],
        child: Center(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              ...userFlows.map((flow) => ScreenContainer(userFlow: flow)),
            ],
          ),
        ),
      ),
    );
  }

}

class ScreenContainer extends StatelessWidget {

  final UserFlow userFlow;

  ScreenContainer({this.userFlow});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      child: Padding(
        padding: const EdgeInsets.only(left: 34, right: 34, bottom: 34),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(userFlow.name, style: Theme.of(context).textTheme.title.copyWith(color: Colors.white),),
            ),
            Container(
              child: Navigator(
                initialRoute: "",
                onGenerateRoute: (routeSettings) {
                  return MaterialPageRoute(builder: userFlow.builder);
                },
              ),
              height: 1920 / 2.6,
              width: 1080 / 2.6,
            )
          ],
        ),
      ),
    );
  }

}