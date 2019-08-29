import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ActionButton.dart';
import 'EditText.dart';
import 'HomeScreen.dart';
import 'PrivacyPolicyScreen.dart';
import 'ProfilePicture.dart';

class SignupScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 50),
                ProfilePicture(),
                SizedBox(height: 32),
                Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      "Sign-up",
                      style: Theme.of(context).textTheme.headline,
                    )),
                SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: EditText(
                      hint: "First Name",
                      icon: Icon(Icons.text_format)
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: EditText(
                    hint: "Last Name",
                    icon: Icon(Icons.text_format)
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: EditText(
                      hint: "Organization",
                      icon: Icon(Icons.text_format)
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: ActionButton(
                    iconData: Icons.arrow_forward,
                    color: Colors.green,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PrivacyPolicyScreen())
                      );
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
