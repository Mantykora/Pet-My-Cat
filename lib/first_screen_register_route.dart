import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_my_cat/login_route.dart';
import 'package:pet_my_cat/register_route.dart';
import 'package:pet_my_cat/utils/pet_enum.dart';


class FirstScreenRegisterRoute extends StatelessWidget {


  String userType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffdadada),
        appBar: AppBar(
          title: Text('Register to Pet My Cat'),
        ),
        body: Stack(
          children: <Widget>[
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
                            color: Colors.white,
                            width: 170,
                            height: 170,
                            child: Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: SvgPicture.asset('assets/volunteer.svg'),
                            ),
                          ),
                          onTap: () {
                            userType = "${PersMap[Person.owner]}";
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      RegisterRoute(userType: userType,)),
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
                            color: Colors.white,
                            width: 170,
                            height: 170,
                            child: Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: SvgPicture.asset('assets/sitter.svg'),
                            ),
                          ),
                          onTap: () {
                            userType = "${PersMap[Person.sitter]}";

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      RegisterRoute(userType: userType,)),
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
                              color: Colors.white,
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
                                    builder: (context) => LoginRoute()),
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