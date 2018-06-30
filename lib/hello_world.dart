import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.amber.shade400,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(Icons.star,size: 50.0,),
          new Icon(Icons.star,size: 50.0,),
          new Icon(Icons.star,size: 50.0,),
        ],
    ),
    );
  }

  Widget row() {
    return new Container(
      color: Colors.amber.shade400,
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Text(
              'Deliver features faster',
              textAlign: TextAlign.center,
              style: new TextStyle(
                  color: Colors.pink
              ),
            ),
          ),
          new Expanded(
            child: new Text('Craft beautiful UIs', textAlign: TextAlign.center),
          ),
          new Expanded(
            child: new FittedBox(
              fit: BoxFit.contain, // otherwise the logo will be tiny
              child: const FlutterLogo(),
            ),
          ),
        ],
      ),
    );
  }

  Widget imageFromUrl(String url) {
    //'https://cdn-images-1.medium.com/max/339/1*q-Y9wu-ZE_4YHLYcPpjgGA.jpeg'
    return new Container(
      foregroundDecoration: new BoxDecoration(
        image: new DecorationImage(
          image: new NetworkImage(url),
        ),
      ),
      transform: new Matrix4.rotationZ(0.0),
    );
  }
}