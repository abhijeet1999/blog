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
                        color: Colors.teal[400],
                        image: DecorationImage(
                          image: AssetImage("images/yolo2.png"),
                        ),
                      ),
                    ),
                    Container(
                      height: 600,
                      width: 730,
                      decoration: BoxDecoration(
                        color: Colors.teal[400],
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SizedBox(width: 50),
                              Text('What is YOLO ?',
                                  style: TextStyle(
                                      fontSize: 45,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ],
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
                          Row(
                            children: <Widget>[
                              SizedBox(width: 5),
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            ' Its an object detector that uses features  ',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black)),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(width: 5),
                              Text(
                                " learned by a deep convolutional neural ",
                                textDirection: TextDirection.ltr,
                                style: new TextStyle(
                                    fontSize: 20.0, color: Colors.black),
                                maxLines: 2,
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(width: 5),
                              Text(
                                " network to detect an object.   ",
                                textDirection: TextDirection.ltr,
                                style: new TextStyle(
                                    fontSize: 20.0, color: Colors.black),
                                maxLines: 2,
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: <Widget>[
                              SizedBox(width: 5),
                              Text('Prerequisite',
                                  style: TextStyle(
                                      fontSize: 35, color: Colors.black)),
                              SizedBox(width: 20),
                              IconButton(
                                icon: Icon(
                                  Icons.arrow_forward,
                                  size: 50,
                                ),
                                tooltip: 'Click Me',
                                onPressed: () {
                                  Navigator.pushNamed(context, '/a');
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: <Widget>[
                              SizedBox(width: 5),
                              Text('Understanding YOLO',
                                  style: TextStyle(
                                      fontSize: 35, color: Colors.black)),
                              SizedBox(width: 20),
                              IconButton(
                                icon: Icon(
                                  Icons.arrow_forward,
                                  size: 50,
                                ),
                                tooltip: 'Click Me',
                                onPressed: () {
                                  Navigator.pushNamed(context, '/b');
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: <Widget>[
                              SizedBox(width: 5),
                              Text('Network Architecture',
                                  style: TextStyle(
                                      fontSize: 35, color: Colors.black)),
                              SizedBox(width: 20),
                              IconButton(
                                icon: Icon(
                                  Icons.arrow_forward,
                                  size: 50,
                                ),
                                tooltip: 'Click Me',
                                onPressed: () {
                                  Navigator.pushNamed(context, '/c');
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: <Widget>[
                              SizedBox(width: 5),
                              Text('Implementing Yolo',
                                  style: TextStyle(
                                      fontSize: 35, color: Colors.black)),
                              SizedBox(width: 20),
                              IconButton(
                                icon: Icon(
                                  Icons.arrow_forward,
                                  size: 50,
                                ),
                                tooltip: 'Click Me',
                                onPressed: () {
                                  Navigator.pushNamed(context, '/d');
                                },
                              ),
                            ],
                          ),
                           SizedBox(height: 20),
                          InkWell(
                            child: new Text('Reference Link',style: TextStyle(
                                      fontSize: 25,color: Colors.red),),
                            onTap: () => launch('https://blog.paperspace.com/how-to-implement-a-yolo-object-detector-in-pytorch/')
                          ),
                           SizedBox(
                  width: 150,
                  height: 10,
                  child: Divider(
                    color: Colors.red,
                  ),
                ),
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
