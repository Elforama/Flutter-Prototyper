

import 'package:flutter/material.dart';

import 'ActionButton.dart';

class SyncScreen extends StatefulWidget {

  @override
  _SyncScreenState createState() {
    return _SyncScreenState();
  }

}

class _SyncScreenState extends State<SyncScreen> {

  bool isSyncing;

  @override
  void initState() {
    isSyncing = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Tree Data"),
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 36,),
              Center(
                child: Container(
                  height: 200,
                  width: 300,
                  color: Colors.grey[300],
                ),
              ),
            ],
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: ActionButton(
                onPressed: () {
                  setState(() {
                    isSyncing = !isSyncing;
                  });
                },
                iconData: isSyncing ? Icons.stop : Icons.sync,
              ),
            ),
          )
        ],
      ),
    );
  }

}