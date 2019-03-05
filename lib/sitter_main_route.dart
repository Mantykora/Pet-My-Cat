import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pet_my_cat/creator_route.dart';
import 'package:pet_my_cat/pet_detail_route.dart';
import 'package:pet_my_cat/pet_edit_route.dart';

class SitterMainRoute extends StatelessWidget {
  String userType;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //backgroundColor: const Color(0xffdadada),
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Your pets'),
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              ListTile(
                leading: SvgPicture.asset('assets/cat.svg',
                  width: 50, height: 50,),
                title: Text('Lucy'),
                subtitle: Text('Your sitter: Anne'),
                onTap: () {
                  userType = "sitter";
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PetDetailRoute(userType: userType)),
                  );

                },
              )
            ],

          ),


        ],
      ),


    );

  }
}