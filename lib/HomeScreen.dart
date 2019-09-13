import 'package:flutter/material.dart';

import 'AddTreeScreen.dart';
import 'CameraScreen.dart';
import 'LongButtonContainer.dart';
import 'MapScreen.dart';
import 'ProfilePicture.dart';
import 'SyncScreen.dart';

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
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Icon(Icons.gps_fixed, color: Colors.yellow, size: 36,),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CameraScreen(nextScreen: (context) => AddTreeScreen()))
                  );
                },
              ),
              SizedBox(height: 16,),
              LongButtonContainer(
                backgroundColor: Colors.greenAccent,
                actionColor: Colors.green,
                icon: Icons.sync,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Text("4920"),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SyncScreen())
                  );
                },
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