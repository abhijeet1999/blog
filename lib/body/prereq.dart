import 'package:flutter/material.dart';
class PreReq extends StatefulWidget {
  @override
  _PreReqState createState() => _PreReqState();
}

class _PreReqState extends State<PreReq> {
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