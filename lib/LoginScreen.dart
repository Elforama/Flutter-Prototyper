

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ActionButton.dart';
import 'SignupScreen.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: Center(
              child: ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(height: 50,),
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(24)
                        ),
                      ),
                      SizedBox(height: 32),
                      Align(
                          alignment: AlignmentDirectional.center,
                          child: Text("GreenStand", style: Theme.of(context).textTheme.headline,)
                      ),
                      SizedBox(height: 32),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Email",
                              border: OutlineInputBorder(),
                              icon: Icon(Icons.email)
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Phone",
                              border: OutlineInputBorder(),
                              icon: Icon(Icons.phone)
                          ),
                        ),
                      ),
                      SizedBox(height: 56),
                      Padding(
                        padding: const EdgeInsets.all(36.0),
                        child: ActionButton(
                          iconData: Icons.arrow_forward,
                          color: Colors.green,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignupScreen())
                            );
                          },
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}