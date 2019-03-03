import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      body: ListView(
    children: <Widget>[
   ListTile(
     leading: SvgPicture.asset('assets/cat.svg',
                width: 50, height: 50,),
     title: Text('Lucy'),
     subtitle: Text('Your sitter: Anne'),
   )
],

      ),

    );

  }
}