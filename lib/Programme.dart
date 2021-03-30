import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'Chaines.dart';
import 'Programme.dart';
import 'Direct/DirectOne.dart';
import 'dart:convert';
import 'ModeSombre.dart';
import 'ModeSombre.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'ProgramClass.dart';
import 'ProgrammeTV/ProgrammeChaine.dart';

class Item {
  const Item(this.name,this.id);
  final String name;
  final String id;
}

class Programme extends StatefulWidget {

  @override
  _ProgrammeState createState() => _ProgrammeState();
}

class _ProgrammeState extends State<Programme> {


  bool ok = false;
  Item selectedUser;
  List<Item> users = <Item>[
    const Item('  El-Oulaa', '1'),
    const Item('  Canal Algerie', '2'),
    const Item('  El ikhbaria', '3'),
    const Item('  Amazighia','4'),
    const Item('  Coran Kareem', '5'),
    const Item('  El-Djazairia', '6'),
    const Item('  El-Maarifa', '7'),
    const Item('  El-Dakiraa', '8'),
  ];
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double widtch=MediaQuery.of(context).size.width;
    return 
    Scaffold(
        appBar: AppBar(
          title: Text( 'Programme TV'),
          
        ),
        body:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child:SingleChildScrollView(
            child: Column(
              children: <Widget>[

                SizedBox(
                  height: 20,
                ),
                DropdownButton<Item>(
                  hint:  Text("Veuillez sélectionner une chaîne",
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 0.05*widtch,
                    fontWeight: FontWeight.bold,

                  ),),
                  value: selectedUser,
                  onChanged: (Item Value) {
                    setState(() {
                      selectedUser = Value;
                      readFile((selectedUser.id).toString()+".xlsx");
                      
                    });
                  },
                  items: users.map((Item user){
                    return  DropdownMenuItem<Item>(
                      value: user,
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              color:Colors.blue,
                              border: Border.all(
                                width: 1,
                                color: Colors.blue,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            ),
                            child: Text(
                              user.id,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Bahnschrift SemiBold SemiConden',
                                color: Colors.white,
                                backgroundColor: Colors.blue,
                              ),
                            ),
                          ),

                          Text(
                            user.name,

                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 20,
                ),
                

              SizedBox(
                height:20
              ),
              
              for (var item in list) Card(
                  child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                     ListTile(
                      title: Text((item.prenom),style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),),
                      subtitle: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Text('Horaire ' + (item.heure).toString()),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text('durée ' + (item.num))),  
                            Expanded(child: Container(child: Text(''),)),
                          Expanded(
                            child: Text( item.status,
                            style: TextStyle(
              fontWeight: FontWeight.bold,
              color : (item.status=="direct") ? Colors.red : Colors.green,
                            ),
                            ),
                            ),
                        ],
                      ),
            
                    ),
                   
                  ],),
                ),




              ],
            ),
          ) ,
        )

    );
  }
}
