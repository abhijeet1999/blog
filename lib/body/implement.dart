import 'package:flutter/material.dart';
class Implement extends StatefulWidget {
  @override
  _ImplementState createState() => _ImplementState();
}

class _ImplementState extends State<Implement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}