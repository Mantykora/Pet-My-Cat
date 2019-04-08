import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_my_cat/models/sign_in.dart';
import 'package:pet_my_cat/models/token.dart';
import 'package:pet_my_cat/resources/api_provider.dart';
import 'package:pet_my_cat/utils/shared_pref.dart';

class LoginRoute extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _PetLoginState();
}

class _PetLoginState extends State<LoginRoute> {

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   backgroundColor: const Color(0xffdadada),
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
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'E-mail',
                            fillColor: Colors.white,
                            filled: true),
                        onChanged: (text) {
                          email = text;
                        },
                      ),
                    )),
                Padding(
                    padding:
                        const EdgeInsets.only(top: 16, left: 24, right: 24),
                    child: Container(
                      width: 270,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            fillColor: Colors.white,
                            filled: true),
                        onChanged: (text) {
                          password = text;
                        },
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
                        FutureBuilder<Token>(
                          future: ApiProvider().postLogin(SignIn(identifier: email, password: password)),
                          builder: (context, response) {
                            //TODO change "owner" to response userType from server
                            SharedPref().writeToSharedPrefs(response.data.token, email, password, "owner");

                          },
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
