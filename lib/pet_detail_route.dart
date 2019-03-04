import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;
import 'package:date_format/date_format.dart';
import 'package:pet_my_cat/custom_day_tile_builder.dart';
import 'package:pet_my_cat/owner_main_route.dart';
import 'package:pet_my_cat/pet_edit_route.dart';
import 'package:flutter_calendar/flutter_calendar.dart';
import 'package:calendarro/calendarro.dart';



class PetDetailRoute extends StatefulWidget {
  PetDetailRoute({Key key}) :super(key: key);



  @override
  State<StatefulWidget> createState() => _PetEditState();
}

class _PetEditState extends State<PetDetailRoute> {
  String first;
  String last;

  Future<Null> _selectDates(BuildContext context) async {
    final List<DateTime> picked = await DateRagePicker.showDatePicker(
        context: context,
        initialFirstDate: new DateTime.now(),
        initialLastDate: (new DateTime.now()).add(new Duration(days: 7)),
        firstDate: new DateTime(2015),
        lastDate: new DateTime(2020)
    );
    if (picked != null && picked.length == 2) {
//      var formatter = new DateFormat.dMMM();
      setState(() {
        first = formatDate(picked[0], [d, '.', mm]);
        last = formatDate(picked[1], [d, '.', mm]);
//        formatDate(picked[0], [d, mm]);
//        formatDate(picked[1], [d, mm]);
      });


      print(picked[0]);
    }
  }

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

                    Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                               'Give her a lot of meat!'
//                  )
//                ),
                          ),
                        )
                    )
                    ,

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

                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                         'You have to clean up litter box'
//                  )
//                ),
                        ),
                      ),
                    ),

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

                   Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                  'Don\'t forget to play with her'
//                  )
//                ),
                        ),
                      ),
                    ),

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
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                         'Change her water'
                        ),
                      ),

                    ),
                  ],
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 8.0),
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
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Center(
                            child: Text(
                              '3.03 - 10.03'
                            ),
                          ),
                     ),


                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: IgnorePointer(
                child: Calendarro(
                    dayTileBuilder: PetDayTileBuilder(),
                    startDate: DateTime.now(),
                    selectionMode: SelectionMode.MULTI,
                    selectedDates: [DateTime(2019, 3, 6), DateTime(2019, 3, 9)]

                ),              ),

            ),

            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Container(
                width: 270,
                height: 50,
                child: RaisedButton(
                    color: const Color(0xff00bcd4),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PetEditRoute(),
                        ),
                      );
                    },
                    child: Text(
                      'EDIT',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              ),
            )


          ],

        ),


      ),
    );
  }


}
