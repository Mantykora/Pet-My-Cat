import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pet_my_cat/creator_route.dart';
import 'package:pet_my_cat/pet_edit_route.dart';

class OwnerMainRoute extends StatelessWidget {
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
              )
            ],

          ),
          Positioned(
            right: 20.0,
            bottom: 20,
            child: Container(
              width: 70,
              height: 70,
              child: FloatingActionButton(
                foregroundColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CreatorRoute()),
                    );

                  },
                child: Icon(Icons.add),
              ),
            ),
          )

        ],
      ),


    );

  }
}