import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdadada),
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Log in'),
      ),
      body: Stack(
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Container(
                    child: SvgPicture.asset(
                      'assets/key.svg',
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 36),
                    child: Container(
                      width: 270,
                      child: TextField(
                        decoration: InputDecoration(labelText: 'E-mail'),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 8, left: 24, right: 24),
                    child: Container(
                      width: 270,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 56),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: RaisedButton(
                    color: const Color(0xff00bcd4),
                      child: Padding(
                        padding: const EdgeInsets.only(
//                            top: 16,
//                            bottom: 16,
//                            right: 76,
//                            left: 76,
                        ),
                        child: Text(
                          'LOG IN',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },

                    ),
                    width: 270,
                    height: 50,

                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
