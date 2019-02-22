import 'package:flutter/material.dart';

class RegisterRoute extends StatelessWidget {
  String userType;

  RegisterRoute(this.userType);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Register as a pet $userType'),
        backgroundColor: Colors.black54,
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0.0,
            right: 0.0,
            left: 0.0,
            height: MediaQuery.of(context).size.height,
            child: Opacity(
              opacity: 1.0,
              child: Image.asset(
                "assets/blur_background2.jpg",
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Name',
                        fillColor: Colors.white,
                        border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'E-mail', border: OutlineInputBorder()),
                    )),
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Password', border: OutlineInputBorder()),
                    )),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      child: FlatButton(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Register',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
