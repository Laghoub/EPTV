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


class education extends StatefulWidget {
  @override
  _educationState createState() => _educationState();
}

class _educationState extends State<education> {
  
  @override
  
  Widget build(BuildContext context) {
    
    
    double height=MediaQuery.of(context).size.height;
    double widtch=MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
        title: Text( 'Education'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[ 
                Text("Voici les programmes qui appartiennent à la catégorie: Education"),
                SizedBox(
                  height:20,
                ),

                for (var item in listcat) Card(
                child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   ListTile(
                    title: Text((item.nom),style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Text('Horaire ' + (item.heure)),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text('durée ' + (item.duree))),  
                          Expanded(child: Container(child: Text(''),)),
                        Expanded(
                          child: Text( "Chaine"+item.ch,
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