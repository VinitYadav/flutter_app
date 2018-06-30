import 'package:flutter/material.dart';
import 'button_example.dart';
import 'text_field_input.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: const Text('Flutter Example'),
        actions: _getActionIcons()
        ,),
      body: new Center(
        child: _getColumns(context), //Column
      ),
    );
  }

  /// Get action icons
  List<Widget> _getActionIcons() {
    return <Widget>[
      new IconButton(icon: const Icon(Icons.card_travel),
          color: Colors.white,
          onPressed: () {}),
      new IconButton(icon: const Icon(Icons.notifications),
          color: Colors.white,
          onPressed: () {})
    ];
  }

  ///Get all buttons
  Column _getColumns(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Container(
          margin: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: new RaisedButton(
            child: new Text('Button',
              style: new TextStyle(
                  color: Colors.white
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ButtonExample()),
              );
            },
            color: Colors.pink,
          ),
        ),
        new Container(
          margin: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: new RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyCustomForm()),
              );
            },
            child: new Text('TextField',
              style: new TextStyle(
                  color: Colors.white
              ),
            ),
            color: Colors.pink,
          ),
        ),
        new Container(
          margin: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: new RaisedButton(
            child: new Text('Button-1',
              style: new TextStyle(
                  color: Colors.white
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ButtonExample()),
              );
            },
            color: Colors.pink,
          ),
        )
      ],
    );
  }
}