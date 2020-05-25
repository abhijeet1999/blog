
import 'package:flutter/material.dart';
import 'package:blog/body/about.dart';
import 'package:blog/body/implement.dart';
import 'package:blog/body/network.dart';
import 'package:blog/body/prereq.dart';
//import 'package:portfolio/home.dart';
import 'package:blog/yolo.dart';
//import 'package:hover_effect/hover_effect.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Yolo(),
     routes: <String, WidgetBuilder> {
      '/a': (BuildContext context) => PreReq(),
      '/b': (BuildContext context) => About(),
      '/c': (BuildContext context) => Network(),
      '/d': (BuildContext context) => Implement(),
      }


    

  ));
  
}




  