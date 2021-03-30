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


class sport extends StatefulWidget {
  @override
  _sportState createState() => _sportState();
}

class _sportState extends State<sport> {
  
  @override
  
  Widget build(BuildContext context) {
    
    
    double height=MediaQuery.of(context).size.height;
    double widtch=MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
        title: Text( 'Sport'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[ 
                Text("Voici les programmes qui appartiennent à la catégorie: Sport"),
                SizedBox(
                  height:20,
                ),

                 Card(
                child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   ListTile(
                    title: Text("El saa Riadiya",style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Text('Horaire ' + "18:00:00"),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text('durée ' + "1h")),  
                          Expanded(child: Container(child: Text(''),)),
                        Expanded(
                          child: Text( "Chaine"+"3",
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
                    title: Text("Sport week-end",style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Text('Horaire ' + "18:00:00"),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text('durée ' + "52min")),  
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
                    title: Text("Sport week-end",style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Text('Horaire ' + "23:41:00"),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text('durée ' + "52 min")),  
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