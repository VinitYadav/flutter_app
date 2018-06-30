import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return _defaultWidget(context);
  }

  Widget _defaultWidget(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: const Text('Button Example'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('Click on me',
            style: TextStyle(
                color: Colors.white
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.pink,
        ),
      ),
    );
  }
}