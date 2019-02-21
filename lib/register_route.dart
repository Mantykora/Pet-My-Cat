import 'package:flutter/material.dart';

class RegisterRoute extends StatelessWidget {
  String userType;

  RegisterRoute(this.userType);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register as a pet $userType'),
        backgroundColor: Colors.black54,
      ),
      body: Container(

        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(

                decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(

                    )
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child:
                TextField(
                  decoration: InputDecoration(
                      labelText: 'E-mail',
                      border: OutlineInputBorder(

                      )
                  ),
                )
            ),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child:
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(

                      )
                  ),
                )
            ),
          ],
        ),

      ),
    );
  }

}