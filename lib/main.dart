import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pet_my_cat/register_route.dart';

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
        hintColor: Colors.white
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  String userType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Register to Pet My Cat'),
          backgroundColor: Colors.black54,
        ),
        body: Stack(
          children: <Widget>[
            Opacity(
              opacity: 0.8,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/flowers_back_black.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ),
            Positioned(
              top: 0.0,
              child: Padding(
                padding: EdgeInsets.only(left: 16, top: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ClipOval(
                      child: Material(
                        child: InkWell(
                          child: Container(
                            color: Colors.black54,
                            width: 170,
                            height: 170,
                            child: Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: SvgPicture.asset('assets/volunteer.svg'),
                            ),
                          ),
                          onTap: () {
                            userType = "owner";
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterRoute(userType)),
                            );
                          },
                        ),
                        type: MaterialType.transparency,
                      ),
                    ),
                    Container(
                      child: Text(
                        'Pet owner',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 0.0,
              top: 200,
              child: Padding(
                padding: EdgeInsets.only(right: 16),
                child: Column(
                  children: <Widget>[
                    ClipOval(
                      child: Material(
                        child: InkWell(
                          child: Container(
                            color: Colors.black54,
                            width: 170,
                            height: 170,
                            child: Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: SvgPicture.asset('assets/sitter.svg'),
                            ),
                          ),
                          onTap: () {
                            userType = "sitter";

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterRoute(userType)),
                            );
                          },
                        ),
                        type: MaterialType.transparency,
                      ),
                    ),
                    Text(
                      'Pet sitter',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    ClipOval(
                        child: Material(
                      child: InkWell(
                        child: Container(
                          color: Colors.black54,
                          width: 105,
                          height: 105,
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: SvgPicture.asset('assets/key.svg'),
                          ),
                        ),
                        onTap: () {

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterRoute('login')),
                          );
                        },
                      ),
                      type: MaterialType.transparency,
                    )),
                    Text(
                      'Log in',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
