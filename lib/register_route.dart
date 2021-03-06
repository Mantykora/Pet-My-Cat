import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_my_cat/creator_route.dart';
import 'package:pet_my_cat/login_route.dart';
import 'package:pet_my_cat/models/sign_up.dart';
import 'package:pet_my_cat/models/token.dart';
import 'package:pet_my_cat/resources/api_provider.dart';
import 'package:pet_my_cat/sitter_main_route.dart';
import 'package:pet_my_cat/utils/shared_pref.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterRoute extends StatefulWidget {
  final String userType;

  RegisterRoute({Key key, @required this.userType}) : super(key: key);


  @override
  State<StatefulWidget> createState() => _PetRegisterState(userType);

  } //  SignUp(String identifier, String password, String email, String firstName, String lastName) {
//    ApiProvider apiPovider = ApiProvider();
//    apiPovider.postSignUp(SignUp(identifier, password, email, firstName, lastName)).then((response) {
//
//    });
//  }

class _PetRegisterState extends State<RegisterRoute> {

  String userType;
  String identifier = "";
  String firstName = "";
  String lastName = "";
  String email = "";
  String password = "";
  //String _token = "";

  _PetRegisterState(this.userType);


  //RegisterRoute(this.userType);

  String getAssetPath() {
    if (userType == "owner") {
      return 'assets/volunteer.svg';
    } else {
      return 'assets/sitter.svg';
    }
  }

  Future<Token> register() async {
    final response = await ApiProvider().postRegister(SignUp(identifier: firstName, password: password, firstName: firstName, lastName: "b", email: email));
    if (response != null) {
      SharedPref().writeToSharedPrefs(response.token, firstName, password, userType);
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
            userType == "owner" ? CreatorRoute() : SitterMainRoute()
        ),
      );
    }
  }

//  void writeToSharedPrefs(String token, String login, String password) async {
//    final prefs = await SharedPreferences.getInstance();
//    prefs.setString('token', token);
//    prefs.setString('login', login);
//    prefs.setString('password', password);
//  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: const Color(0xffdadada),
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
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name',
                        fillColor: Colors.white,
                        //const Color(0xfff7c4ff),
                        filled: true
                      ),
                      onChanged: (text) {
                        firstName = text;
                      },
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Container(
                      width: 270,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'E-mail',
                            fillColor: Colors.white,
                            filled: true
                        ),
                        onChanged: (text) {
                          email = text;
                        },
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
                    child: Container(
                      width: 270,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                            fillColor: Colors.white,
                            filled: true
                        ),
                        onChanged: (text) {

                            password = text;
                        },
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
//                        FutureBuilder<Token>(
//                          future: ApiProvider().postRegister(SignUp(identifier: firstName, password: password, firstName: firstName, lastName: "b", email: email)),
//                          builder: (context, response) {
//
//                            //TODO change firstname to email
//                             navigateToOwnerOrSitterRoute(response, context);
//                        },
//                        );
                      register();


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

  void navigateToOwnerOrSitterRoute(AsyncSnapshot<Token> response, BuildContext context) {
        SharedPref().writeToSharedPrefs(response.data.token, firstName, password, userType);
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
          userType == "owner" ? CreatorRoute() : SitterMainRoute()
      ),
    );
  }
}
