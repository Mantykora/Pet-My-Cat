import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pet_my_cat/first_screen_register_route.dart';
import 'package:pet_my_cat/login_route.dart';
import 'package:pet_my_cat/owner_main_route.dart';
import 'package:pet_my_cat/register_route.dart';
import 'package:pet_my_cat/sitter_main_route.dart';
import 'package:pet_my_cat/utils/pet_enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          hintColor: Colors.black,
          primaryColor: const Color(0xff9c27b0),
          accentColor: const Color(0xff00bbd3)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {

   return _HomePageState(); }


}
  class _HomePageState extends State<MyHomePage> {

    String _login;
    String _user;


    @override
    void initState() {
      super.initState();

      _loadUserInfoAndNavigate();
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(

      );
    }


    _loadUserInfoAndNavigate() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      _login = (prefs.getString('login') ?? "");
      _user = (prefs.getString('user'));


      if (_login == "") {
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(
                builder: (context) => FirstScreenRegisterRoute()),
            ModalRoute.withName('/first_screen_register_route')
        );
      } else {
        if (_user == "owner") {
          Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(
                  builder: (context) => OwnerMainRoute()),
              ModalRoute.withName('/owner_main_route')
          );
        }

        else if (_user == "sitter") {
          Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(
                  builder: (context) => SitterMainRoute()),
              ModalRoute.withName('/sitter_main_route')
          );
        }
      }
    }
  }