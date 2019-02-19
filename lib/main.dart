import 'package:flutter/material.dart';

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
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/flowers_back.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    child: AppBar(
                      title: Text('Register to Pet My Cat'),
                      backgroundColor: const Color(0xFFB4C56C).withOpacity(0.0),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, top: 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          ClipOval(
                            child: Container(
                              color: Colors.black54,
                              width: 170,
                              height: 170,
                            ),
                          ),
                          Container(
                            child: Text('Pet owner'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Column(
                        children: <Widget>[
                          ClipOval(
                            child: Container(
                              color: Colors.black54,
                              width: 170,
                              height: 170,
                            ),
                          ),
                          Text('Pet sitter')
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          children: <Widget>[
                            ClipOval(
                              child: Container(
                                color: Colors.black54,
                                width: 105,
                                height: 105,
                              ),
                            ),
                            Text('Log in')
                          ],
                        ),
                      ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
