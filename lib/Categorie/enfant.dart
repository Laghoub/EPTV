import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:entv/ProgramClass.dart';


class enfant extends StatefulWidget {
  @override
  _enfantState createState() => _enfantState();
}

class _enfantState extends State<enfant> {
  
  @override
  
  Widget build(BuildContext context) {
    
    double height=MediaQuery.of(context).size.height;
    double widtch=MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
        title: Text( 'Enfant'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[ 
                Text("Voici les programmes qui appartiennent à la catégorie: Enfant"),
                SizedBox(
                  height:20,
                ),

                 Card(
                child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   ListTile(
                    title: Text("Dessin annimé Maroko",style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Text('Horaire ' + "16:30:00"),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text('durée ' + "30 min")),  
                          Expanded(child: Container(child: Text(''),)),
                        Expanded(
                          child: Text( "Chaine"+"6",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          ),

                         
                      ],
                    ),
            
                  ),
                 
                ],),
              ),


               Card(
                child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   ListTile(
                    title: Text("Ghazaouate Rassoul (DA)",style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Text('Horaire ' + "13:52:00"),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text('durée ' + "13 min")),  
                          Expanded(child: Container(child: Text(''),)),
                        Expanded(
                          child: Text( "Chaine"+"5",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          ),

                         
                      ],
                    ),
            
                  ),
                 
                ],),
              ),
     Card(
                child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   ListTile(
                    title: Text("Dessin annimé ",style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Text('Horaire ' + "15:53:00"),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text('durée ' + "15 min")),  
                          Expanded(child: Container(child: Text(''),)),
                        Expanded(
                          child: Text( "Chaine"+"2",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          ),

                         
                      ],
                    ),
            
                  ),
                 
                ],),
              ),

               Card(
                child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   ListTile(
                    title: Text("Amou YAZID",style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Text('Horaire ' + "16:08:00"),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text('durée ' + "5 min")),  
                          Expanded(child: Container(child: Text(''),)),
                        Expanded(
                          child: Text( "Chaine"+"2",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
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
          ),
        ),
      ),
    );
  }
}