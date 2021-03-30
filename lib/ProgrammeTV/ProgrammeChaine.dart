import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:excel/excel.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'dart:async';
import 'package:entv/ProgramClass.dart';


class Prgmch extends StatefulWidget {
  @override
  _PrgmchState createState() => _PrgmchState();
}

class _PrgmchState extends State<Prgmch> {
  
  
  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();          
    double height=MediaQuery.of(context).size.height;
    double widtch=MediaQuery.of(context).size.width;
    return Scaffold(
appBar: AppBar(
        title: Text( 'Programme TV'),
        
      ),
    body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: <Widget>[
        
          SizedBox(
            height:30,
          ),

          Text('Programme du jour:  ${now.day} - ${now.month} - ${now.year}',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 0.06*widtch,


                          ),),

           SizedBox(
            height:20,
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
        ],),
      ),
    ),
    );
  }
}
