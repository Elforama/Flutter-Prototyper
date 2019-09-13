import 'dart:io';

import 'package:flutter/material.dart';

import 'package:greenstand_prototype/web/WebHome.dart';
import 'HomeScreen.dart';
import 'LoginScreen.dart';
import 'ResponsiveHome.dart';
import 'UserFlows.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveHome(),
    );
  }
}