import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PetDetailsRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
        body:
        Column(
           mainAxisSize: MainAxisSize.min,


            children: <Widget>[


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  //  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset('assets/canned-food.svg',
                          width: 50, height: 50),
                    ),
                    Container(
                      width: 250,
                      height: 70,
                      child:
                      Center(
                          child: TextField(
                            maxLines: null,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Add food instructions',
                                fillColor: Colors.white,
                                filled: true),
//                  )
//                ),
                          )
                      )
                      ,
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset('assets/litter-box.svg',
                          width: 50, height: 50),
                    ),
                    Container(
                      width: 250,
                      height: 70,
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Add pet care instructions',
                              fillColor: Colors.white,
                              filled: true),
//                  )
//                ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset('assets/tennis-ball.svg',
                          width: 50, height: 50),
                    ),
                    Container(
                      width: 250,
                      height: 70,
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Add entertainment instructions',
                              fillColor: Colors.white,
                              filled: true),
//                  )
//                ),
                        ),
                      ),
                    )
                    //TextField()
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width:350,

                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: TextField(
                            maxLines: 4,
                            decoration: InputDecoration(

                              border: OutlineInputBorder(),
                              labelText: 'Additional notes to your sitter',
                              fillColor: Colors.white,
                              filled: true,
                            ),
                          ),

                      ),
                    ],
                  ),
                ),
              ),


                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: SvgPicture.asset('assets/calendar.svg',
                            width: 50,
                            height: 50,),
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.all(
                              Radius.circular(4.0) //                 <--- border radius here
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Choose dates of your trip',

                          ),
                        ),
                      )
                    ],
                ),
                 ),



            ],

        ),


      ),
    );
  }
}
