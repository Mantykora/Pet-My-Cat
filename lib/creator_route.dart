import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_my_cat/pet_details_route.dart';

class CreatorRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //backgroundColor: const Color(0xffdadada),
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Create a pet'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 36),
                child: Container(
                  width: 270,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Pet\'s name',
                        fillColor: Colors.white,
                        filled: true),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                  width: 270,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Pet\'s species',
                        fillColor: Colors.white,
                        filled: true),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                  width: 270,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Your sitter\'s e-mail',
                        fillColor: Colors.white,
                        filled: true,
                     // prefixIcon: SvgPicture.asset('assets/key.svg',width: 10, height: 10,)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                    width: 270,
                    child: Text(
                      'We will send invitation to your siter \nto install Pet a cat',
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 48),
                child: Container(
                  width: 270,
                  height: 50,
                  child: RaisedButton(
                      color: const Color(0xff00bcd4),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PetDetailsRoute(),
                          ),
                        );
                      },
                      child: Text(
                        'CREATE',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
