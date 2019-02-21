import 'package:flutter/material.dart';

class RegisterRoute extends StatelessWidget {
  String userType;
  RegisterRoute(this.userType);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Register as a pet $userType'),
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