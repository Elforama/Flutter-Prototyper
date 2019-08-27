import 'package:flutter/material.dart';

import 'LongButtonContainer.dart';
import 'MapScreen.dart';
import 'ProfilePicture.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 50),
              ProfilePicture(),
              SizedBox(height: 32),
              LongButtonContainer(
                backgroundColor: Colors.redAccent[100],
                actionColor: Colors.red,
                icon: Icons.transfer_within_a_station,
                onPressed: () {},
              ),
              SizedBox(height: 16,),
              LongButtonContainer(
                backgroundColor: Colors.greenAccent,
                actionColor: Colors.green,
                icon: Icons.sync,
                onPressed: () {},
              ),
              SizedBox(height: 16,),
              Row(
                children: <Widget>[
                  Expanded(
                    child: LongButtonContainer(
                      backgroundColor: Colors.yellow[200],
                      actionColor: Colors.yellow[600],
                      icon: Icons.settings,
                      onPressed: () {},
                      buttonAlignment: AlignmentDirectional.center,
                    ),
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: LongButtonContainer(
                      backgroundColor: Colors.brown[200],
                      actionColor: Colors.brown,
                      icon: Icons.map,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MapScreen())
                        );
                      },
                      buttonAlignment: AlignmentDirectional.center,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}