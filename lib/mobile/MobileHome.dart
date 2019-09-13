import 'package:flutter/material.dart';

import '../UserFlows.dart';

class MobileHome extends StatelessWidget {

  final List<UserFlow> userFlows;

  MobileHome({this.userFlows});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ...userFlows.map((flow) => _FlowListItem(userFlow: flow)),
        ]
      ),
    );
  }

}

class _FlowListItem extends StatelessWidget {

  final UserFlow userFlow;

  _FlowListItem({this.userFlow});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(userFlow.name),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: userFlow.builder)
        );
      },
    );
  }

}