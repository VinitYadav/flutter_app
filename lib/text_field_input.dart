import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldInput extends State<MyCustomForm> {

  final contName = TextEditingController();
  final contEmail = TextEditingController();
  final contMobile = TextEditingController();
  final contPassword = TextEditingController();
  final contConfirmPassword = TextEditingController();

  @override
  void dispose() {
    contName.dispose();
    contEmail.dispose();
    contMobile.dispose();
    contPassword.dispose();
    contConfirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: const Text('TextField Input'),
      ),
      body: new Center(
        child: new ListView(
          children: _getInputFields(context),
        ),
      ),
    );
  }

  /// Get all input fields
  List<Widget> _getInputFields(BuildContext context) {
    List<Widget> list = new List();
    list.add(new Container(
      margin: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
      child: new TextFormField(
        keyboardType: TextInputType.text,
        decoration: new InputDecoration(
          icon: Icon(Icons.person,
            color: Colors.pink,
          ),
          hintText: 'Enter a name',
          labelText: 'Name',
        ),
        controller: contName,
      ),
    ));

    list.add(new Container(
      margin: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
      child: new TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: new InputDecoration(
          icon: Icon(Icons.email,
            color: Colors.pink,
          ),
          hintText: 'Enter a email',
          labelText: 'Email',
        ),
        controller: contEmail,
      ),
    ));

    list.add(new Container(
      margin: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
      child: new TextFormField(
        keyboardType: TextInputType.number,
        decoration: new InputDecoration(
          icon: Icon(Icons.phone,
            color: Colors.pink,
          ),
          hintText: 'Enter a number',
          labelText: 'Mobile',
        ),
        controller: contMobile,
      ),
    ));

    list.add(new Container(
      margin: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
      child: new TextFormField(
        obscureText: true,
        keyboardType: TextInputType.text,
        decoration: new InputDecoration(
          icon: Icon(Icons.lock,
            color: Colors.pink,
          ),
          hintText: 'Enter a password',
          labelText: 'Password',
        ),
        controller: contPassword,
      ),
    ));

    list.add(new Container(
      margin: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
      child: new TextFormField(
        obscureText: true,
        keyboardType: TextInputType.text,
        decoration: new InputDecoration(
          icon: Icon(Icons.lock,
            color: Colors.pink,
          ),
          hintText: 'Enter confirm password',
          labelText: 'Confirm password',
        ),
        controller: contConfirmPassword,
      ),
    ));

    list.add(new Container(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 10.0),
      child: new RaisedButton(
        child: new Text(
          'Submit',
          style: new TextStyle(
              color: Colors.white
          ),
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (BuildContext context) {
            return new Container(
              child: new Text(
                  'This is the modal bottom sheet. Click anywhere to dismiss.',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      color: Theme
                          .of(context)
                          .accentColor,
                      fontSize: 24.0
                  )
              ),
            );
          });
          /*return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Validation'),
                content: Text(contName.text),
              );
            },
          );*/
        },
        color: Colors.pink,
      ),
    ));

    return list;
  }
}


class MyCustomForm extends StatefulWidget {
  @override
  TextFieldInput createState() => TextFieldInput();
}