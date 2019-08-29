


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ActionButton.dart';
import 'CameraScreen.dart';
import 'EditText.dart';
import 'HomeScreen.dart';
import 'SignupScreen.dart';

class PrivacyPolicyScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 50,),
                  Text("Privacy Policy", style: Theme.of(context).textTheme.headline),
                  SizedBox(height: 32),
                  SizedBox(
                    height: 550,
                    child: ListView(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Et tortor consequat id porta nibh venenatis cras sed felis. Fermentum leo vel orci porta. Erat nam at lectus urna duis convallis. Consequat interdum varius sit amet mattis vulputate enim. Montes nascetur ridiculus mus mauris vitae ultricies leo integer. Vitae proin sagittis nisl rhoncus mattis rhoncus urna neque viverra. Neque ornare aenean euismod elementum. Nisl suscipit adipiscing bibendum est ultricies integer. Consequat id porta nibh venenatis cras sed felis. Natoque penatibus et magnis dis parturient. Quis risus sed vulputate odio ut enim blandit. Leo urna molestie at elementum. Sed enim ut sem viverra. Tristique senectus et netus et malesuada fames ac. Pellentesque adipiscing commodo elit at imperdiet dui accumsan. Fermentum odio eu feugiat pretium nibh. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Et tortor consequat id porta nibh venenatis cras sed felis. Fermentum leo vel orci porta. Erat nam at lectus urna duis convallis. Consequat interdum varius sit amet mattis vulputate enim. Montes nascetur ridiculus mus mauris vitae ultricies leo integer. Vitae proin sagittis nisl rhoncus mattis rhoncus urna neque viverra. Neque ornare aenean euismod elementum. Nisl suscipit adipiscing bibendum est ultricies integer. Consequat id porta nibh venenatis cras sed felis. Natoque penatibus et magnis dis parturient. Quis risus sed vulputate odio ut enim blandit. Leo urna molestie at elementum. Sed enim ut sem viverra. Tristique senectus et netus et malesuada fames ac. Pellentesque adipiscing commodo elit at imperdiet dui accumsan. Fermentum odio eu feugiat pretium nibh.\n\n\n\n\n",),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: ActionButton(
                iconData: Icons.check,
                color: Colors.green,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen())
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

}