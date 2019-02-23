import 'package:flutter/material.dart';


class CreatorRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Create a pet'),
        backgroundColor: Colors.black54,
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: 270,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Pet\'s name',
                  ),
                ),
              ),
              Container(
                width: 270,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Pet\'s species',
                  ),
                ),
              ),

              Container(
                width: 270,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Your sitter\'s e-mail',
                  ),
                ),
              ),
              Text('We will send invitation to your siter to install Pet a cat')
            ],
          )
        ],

      ),
    );
  }


}