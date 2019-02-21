import 'package:flutter/material.dart';

class RegisterRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register as a pet owner'),
      ),
      body: Center(
        child: RaisedButton(onPressed: () {
          Navigator.pop(context);
        },
        child: Text('Go back!'),
        ),
      )
    );

  }

}