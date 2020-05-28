import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layers"),
        backgroundColor: Colors.blue,
      ),
      body: DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyText2,
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints viewportConstrain) {
          return SingleChildScrollView(
            child: Column(children: <Widget>[
              Container(
                height: 40,
                width: 730,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: 40,
                    ),
                    Text("Input Data",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Container(
                height: 270,
                width: 730,
                decoration: BoxDecoration(
                  //  color: Colors.lightBlueAccent,
                  image: DecorationImage(
                    image: AssetImage("images/1.gif"),
                  ),
                ),
              ),
              Container(
                height: 630,
                width: 730,
                child: Column(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        text:
                            'In the case of a CNN, the convolution is performed on the input data with the use of a ',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'filter or kernel',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              )),
                          TextSpan(
                            text:
                                ' (these terms are used interchangeably) to then produce a ',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                              text: 'feature map.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'We execute a convolution by sliding the filter over the input. At every location, a matrix multiplication is performed and sums the result onto the feature map.',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text:
                            'In the animation below, you can see the convolution operation. You can see the ',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'filter',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              )),
                          TextSpan(
                            text: ' (the green square) is sliding over our ',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                              text: 'input.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              )),
                          TextSpan(
                            text:
                                '(the blue square) and the sum of the convolution goes into the ',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                              text: 'feature map ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              )),
                          TextSpan(
                            text:
                                '(the red square).The area of our filter is also called the receptive field, named after the neuron cells! The size of this filter is 3x3.',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'For the sake of explaining, I have shown you the operation in 2D, but in reality convolutions are performed in 3D. Each image is namely represented as a 3D matrix with a dimension for width, height, and depth. Depth is a dimension because of the colours channels used in an image (RGB).',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 970,
                width: 730,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(" KeyWords:",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        Text(
                          ' 1.Activation Function-ReLU ->',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Just like any other Neural Network, we use an activation function to make our output non-linear.In the case of a Convolutional Neural Network, the output of the convolution will be passed through the activation function. This could be the ReLU activation function.',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                        child: new Text(
                          ' MORE->',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        onTap: () => launch(
                            'https://www.youtube.com/watch?v=m0pIlLfpXWE&feature=emb_title')),
                    SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        Text(
                          ' 2.Stride/Padding->',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Stride is the size of the step the convolution filter moves each time. A stride size is usually 1, meaning the filter slides pixel by pixel. By increasing the stride size, your filter is sliding over the input with a larger interval and thus has less overlap between the cells.Because the size of the feature map is always smaller than the input, we have to do something to prevent our feature map from shrinking. This is where we use padding.',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                        child: new Text(
                          ' MORE->',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        onTap: () => launch(
                            'https://www.youtube.com/watch?v=L24TH84fJPE')),
                    SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        Text(
                          ' 3.Max Pooling ->',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      ''' After a convolution layer, it is common to add a pooling layer in between CNN layers. The function of pooling is to continuously reduce the dimensionality to reduce the number of parameters and computation in the network. This shortens the training time and controls overfitting.

The most frequent type of pooling is max pooling, which takes the maximum value in each window. These window sizes need to be specified beforehand. This decreases the feature map size while at the same time keeping the significant information.''',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                        child: new Text(
                          ' MORE->',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        onTap: () => launch(
                            'https://www.youtube.com/watch?v=m0pIlLfpXWE&feature=emb_title')),
                  ],
                ),
              ),
            ]),
          );
        }),
      ),
    );
  }
}
