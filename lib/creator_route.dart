import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_my_cat/pet.dart';
import 'package:pet_my_cat/pet_edit_route.dart';
import 'package:pet_my_cat/species_map.dart';

class CreatorRoute extends StatefulWidget {
  CreatorRoute({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CreatorState();
}

class _CreatorState extends State<CreatorRoute> {

  List<Pet> sp = speciesList;


  Pet pet;
  //Pet pet;

  String petName = "";



//  List<String> createPetsListFromMap() {
//    List<String> newList = [];
////    for (String key in speciesMap.keys) {
////      newList.add(key);
////    }
//
//    return newList;
//  }

  BuildContext scaffoldContext;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //backgroundColor: const Color(0xffdadada),
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Create a pet'),
      ),
      body:
      Builder(
        builder: (BuildContext context) {
          scaffoldContext = context;
          return Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 36),
                    child: Container(
                      width: 270,
                      child: TextField(
                        onChanged: (text) {
                          petName = text;
                        },
                        textCapitalization: TextCapitalization.words,
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
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),
                          color: Colors.white,
                          border: Border.all()),
                      child: Padding(
                        padding:
                        const EdgeInsets.only(left: 8.0, top: 4.0, bottom: 4.0),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<Pet>(
                            hint: Text('Pet\'s species'),
                            value: pet,
                            onChanged: (Pet newValue) {
                              setState(() {
                                pet = newValue;
                              });
                            },
                            items: sp
                            //createPetsListFromMap()

                            //createPetsListFromMap()[0]]
                                .map<DropdownMenuItem<Pet>>((Pet value) {
                              return DropdownMenuItem<Pet>(
                                value: value,
                                child: Text(value.species),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Container(
                      width: 270,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
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
                            goToPetEditRoute(context);
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
          );
        },
      )

    );
  }

void goToPetEditRoute(BuildContext context) {
    if (petName.isNotEmpty) {
      pet.pet_name = petName;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              PetEditRoute(pet: pet),
        ),
      );
    } else {
      SnackBar snackBar = SnackBar(content: Text("Please enter all fields"), duration: Duration(seconds: 3));
      Scaffold.of(scaffoldContext).showSnackBar(snackBar);
    }
}
}
