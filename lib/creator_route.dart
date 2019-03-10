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
  String dropdownValue;


  List<String> createPetsListFromMap() {
    List<String> newList = [];
    for (String key in speciesMap.keys) {
      newList.add(key);
    }

    return newList;
  }

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
                      child: DropdownButton<String>(
                        hint: Text('Pet\'s species'),
                        value: dropdownValue,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: createPetsListFromMap()

                            //createPetsListFromMap()[0]]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                PetEditRoute(petSpecies: dropdownValue),
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
