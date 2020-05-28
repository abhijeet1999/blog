import 'package:flutter/material.dart';
import 'package:blog/pages/p1.dart';

class PreReq extends StatefulWidget {
  @override
  _PreReqState createState() => _PreReqState();
}

class _PreReqState extends State<PreReq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prerequisites"),
        backgroundColor: Colors.blue,
      ),
      body: DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyText2,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstrain) {
            return SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 270,
                    width: 730,
                    decoration: BoxDecoration(
                      //  color: Colors.lightBlueAccent,
                      image: DecorationImage(
                        image: AssetImage("images/cnn.jpeg"),
                      ),
                    ),
                  ),
                  Container(
                    height: 600,
                    width: 730,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text('''CNNs have two components:''',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(height: 30),
                        Text('1.The Hidden layers/Feature extraction part',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Text(
                            'In this part, the network will perform a series of convolutions and pooling operations during which the features are detected. If you had a picture of a zebra, this is the part where the network would recognise its stripes, two ears, and four legs.',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            )),
                        InkWell(
                          child: Text('More->',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              )),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Page1()),
                            );
                          },
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: <Widget>[
                            Text('2.The Classification part',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                            'Here, the fully connected layers will serve as a classifier on top of these extracted features. They will assign a probability for the object on the image being what the algorithm predicts it is.',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            )),
                        InkWell(
                          child: Text('More->',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              )),
                          onTap: () {
                            //Navigator.pushNamed(context, '/a');
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
