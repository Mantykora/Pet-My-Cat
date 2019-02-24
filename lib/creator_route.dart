import 'package:flutter/material.dart';


class CreatorRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Create a pet'),
        backgroundColor: Colors.black54,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            top: 0.0,
            right: 0.0,
            left: 0.0,
            height: MediaQuery.of(context).size.height,
            child: Opacity(
              opacity: 0.7,
              child: Image.asset(
                "assets/blur_background2.jpg",
                fit: BoxFit.fill,
              ),
            ),
          ),
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
                    ),
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
                    ),
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
                      style: TextStyle(
                        color: Colors.white
                      ),

                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 48),
                child: Container(
                  width: 270,
                  height: 50,
                  child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreatorRoute(),
                          ),
                        );
                      }, child: Text(
                    'CREATE',
                    style: TextStyle(
                      color: const Color(0xffb311B92),

                    ),
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