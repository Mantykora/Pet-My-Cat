import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PetDetailsRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text("Lucy",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    )),
                background:
                    (Image.asset('assets/cat_photo.jpg', fit: BoxFit.cover)),

                //Image.network(
//                    "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
//                    fit: BoxFit.cover,
//                  ),
              ),
            ),
          ];
        },
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
//                Expanded(
                SvgPicture.asset('assets/canned-food.svg',
                    width: 50, height: 50),
//                ),
//                Expanded(
                Container(
                  width: 250,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'E-mail',
                        fillColor: Colors.white,
                        filled: true),
//                  )
//                ),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                SvgPicture.asset('assets/litter-box.svg',
                    width: 50, height: 50),
                Container(
                  width: 250,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'E-mail',
                        fillColor: Colors.white,
                        filled: true),
//                  )
//                ),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                SvgPicture.asset('assets/tennis-ball.svg',
                    width: 50, height: 50),
                Container(
                  width: 250,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'E-mail',
                        fillColor: Colors.white,
                        filled: true),
//                  )
//                ),
                  ),
                )
                //TextField()
              ],
            )
          ],
        ),
      ),
    );
  }
}
