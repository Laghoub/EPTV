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

class Frequences extends StatefulWidget {
  @override
  _FrequencesState createState() => _FrequencesState();
}

class _FrequencesState extends State<Frequences> {

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double widtch=MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
        title: Text( 'Fréquence chaînes'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                      
                        'images/watch-tv.png',
                        fit: BoxFit.fitWidth,
                        height: 0.4*height,
                        width: 0.4*widtch ,
	
                              ),
                              SizedBox(
                    height: 8,
                  ),


                Card(
                child: Column(
                
                children: <Widget>[
                   ListTile(
                    title: Text('El oulaa',style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Nilesat 7° Ouest 11679 H 27500 3/4'),
                        Text('Hot Bird 13E 11623 V 27500 3/4'),
                      ],
                    )
            
                  ),
                 
                ],),
              ),


              Card(
                child: Column(
                
                children: <Widget>[
                   ListTile(
                    title: Text('Canal Algérie',style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Nilesat 7° Ouest 11678 H 27500 3/4'),
                        Text('Hot Bird 13E 12576 V 27500 3/4'),
                      ],
                    )
            
                  ),
                 
                ],),
              ),

            Card(
              
                child: Column(
                  
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   ListTile(
                    title: Text('El ikhbaria',style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Nilesat 7° Ouest 11679 H 27500 3/4'),
                        Text('Hot Bird 13E 11623 V 27500 3/4'),
                      ],
                    )
            
                  ),
                 
                ],),
              ),  



              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   ListTile(
                    title: Text('El Amazighia',style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Nilesat 7° Ouest 11679 H 27500 3/4'),
                        Text('Hot Bird 13E 11623 V 27500 3/4'),
                      ],
                    )
            
                  ),
                 
                ],),
              ),


               Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   ListTile(
                    title: Text('Coran kareem',style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Nilesat 7° Ouest 11679 H 27500 3/4'),
                        Text('Hot Bird 13E 11034 V 27500 3/4'),
                      ],
                    )
            
                  ),
                 
                ],),
              ), 

              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   ListTile(
                    title: Text('El Djazairia',style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Nilesat 7° Ouest 11679 H 27500 3/4'),
                        Text('Hot Bird 13E 11034 V 27500 3/4'),
                      ],
                    )
            
                  ),
                 
                ],),
              ),



              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   ListTile(
                    title: Text('El Maarifa',style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Nilesat 7° Ouest 11680 H 27500 3/4'),
                        Text('Hot Bird 13E 11034 V 27500 3/4'),
                      ],
                    )
            
                  ),
                 
                ],),
              ),  
Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   ListTile(
                    title: Text('El Dhakira',style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Nilesat 7° Ouest 11680 H 27500 3/4'),
                        Text('Hot Bird 13E 11034 V 27500 3/4'),
                      ],
                    )
            
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