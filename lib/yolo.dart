import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class Yolo extends StatefulWidget {
  @override
  _YoloState createState() => _YoloState();
}

class _YoloState extends State<Yolo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTextStyle(
          style: Theme.of(context).textTheme.bodyText2,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints viewportConstrain) {
              return SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 330,
                      width: 730,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        image: DecorationImage(
                          image: AssetImage("images/yolo2.png"),
                        ),
                      ),
                    ),
                    Container(
                      height: 630,
                      width: 730,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SizedBox(width: 70),
                              Text('What is YOLO ?',
                                  style: TextStyle(
                                      fontSize: 45,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            width: 200,
                            height: 10,
                            child: Divider(
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: <Widget>[
                              SizedBox(width: 5),
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'YOLO',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 25)),
                                    TextSpan(
                                        text: ' stands for ',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black)),
                                    TextSpan(
                                        text: 'You Only Look Once. ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 25)),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            '''Its an object detector that uses features learned by a deep convolutional neural network to detect an object.''',
                            style: new TextStyle(
                                fontSize: 25.0, color: Colors.black),
                            // textDirection: TextDirection.ltr,
                          ),
                          SizedBox(height: 60),
                          Row(
                            children: <Widget>[
                              SizedBox(width: 5),
                              InkWell(
                                child: Text('Prerequisite ->',
                                    style: TextStyle(
                                      fontSize: 35,
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                    )),
                                onTap: () {
                                  Navigator.pushNamed(context, '/a');
                                },
                              ),
                              SizedBox(width: 20),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: <Widget>[
                              SizedBox(width: 5),
                              InkWell(
                                child: Text('Understanding YOLO ->',
                                    style: TextStyle(
                                      fontSize: 35,
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                    )),
                                onTap: () {
                                  Navigator.pushNamed(context, '/b');
                                },
                              ),
                              SizedBox(width: 20),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: <Widget>[
                              SizedBox(width: 5),
                              InkWell(
                                child: Text('Network Architecture ->',
                                    style: TextStyle(
                                      fontSize: 35,
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                    )),
                                onTap: () {
                                  Navigator.pushNamed(context, '/c');
                                },
                              ),
                              SizedBox(width: 20),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: <Widget>[
                              SizedBox(width: 5),
                              InkWell(
                                child: Text('Implementing Yolo ->',
                                    style: TextStyle(
                                      fontSize: 35,
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                    )),
                                onTap: () {
                                  Navigator.pushNamed(context, '/d');
                                },
                              ),
                              SizedBox(width: 20),
                            ],
                          ),
                          SizedBox(height: 20),
                          InkWell(
                              child: new Text(
                                'Reference Link',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              onTap: () => launch(
                                  'https://blog.paperspace.com/how-to-implement-a-yolo-object-detector-in-pytorch/')),
                          SizedBox(
                            width: 150,
                            height: 10,
                            child: Divider(
                              color: Colors.deepOrange,
                            ),
                          ),
                          SizedBox(height: 30)
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          )),
    );
  }
}
