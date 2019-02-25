import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_my_cat/creator_route.dart';

class RegisterRoute extends StatelessWidget {
  String userType;

  RegisterRoute(this.userType);

  String getAssetPath() {
    if (userType == "owner") {
      return 'assets/volunteer.svg';
    } else {
      return 'assets/sitter.svg';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdadada),
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Register as a pet $userType'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Container(
                    child: SvgPicture.asset(
                      getAssetPath(),
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: Container(
                    width: 270,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name',
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Container(
                      width: 270,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'E-mail'
                        ),

                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
                    child: Container(
                      width: 270,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 56),
                  child: Container(

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
                          'REGISTER',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreatorRoute(),
                        ),
                        );
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
