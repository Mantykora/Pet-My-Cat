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
                        labelText: 'Name',
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 8),
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
                    child: FlatButton(
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
