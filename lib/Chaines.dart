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

class Chaines extends StatefulWidget {
  @override
  _ChainesState createState() => _ChainesState();
}

class _ChainesState extends State<Chaines> {


  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double widtch=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text( 'chaînes'),
        
      ),
      body:
          Padding(
            padding: const EdgeInsets.all(30.0),
            child:SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.touch_app, ),
              title: Text('Toutes les chaînes'),
              subtitle: Text('En cliquant sur une chaîne, vous serez rediriger vers la diffusion en direct.'),
            ),
          ],
        ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                      child: Container(
                        width: 0.2*widtch,
                          height: 0.2*height,
                        decoration: BoxDecoration(
                            //color: const Color(0xff03a9f4),
                            border: Border.all(
                              width: 1,
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        child: FlatButton(
                         child: Image.asset(
                  
                    'images/one.png',
                    fit: BoxFit.fitWidth,
	
                          ),
                          onPressed: (){
                            setState(() {
                              codeChannel(0);
                              readFile("1.xlsx");
                              whatis="El-Oulaa";
                            });
                              
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LiveOne(),
                                ),
                              );
                          },
                        ),
                        
                      )
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                      child: Container(
                        width: 0.2*widtch,
                          height: 0.2*height,
                        decoration: BoxDecoration(
                            //color: const Color(0xff03a9f4),
                            border: Border.all(
                              width: 1,
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        child: FlatButton(
                         child: Image.asset(
                  
                    'images/two.png',
                    fit: BoxFit.fitWidth,
	
                          ),
                          onPressed: (){
                            setState(() {
                              codeChannel(1);
                              readFile("2.xlsx");
                              whatis="Canal-Algérie";
                            });
                              
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LiveOne(),
                                ),
                              );
                          },
                        ),
                        
                      )
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  
          
                  Row(
                    children: <Widget>[
                      Expanded(
                      child: Container(
                        width: 0.2*widtch,
                          height: 0.2*height,
                        decoration: BoxDecoration(
                            //color: const Color(0xff03a9f4),
                            border: Border.all(
                              width: 1,
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        child: FlatButton(
                         child: Image.asset(
                  
                    'images/three.png',
                    fit: BoxFit.fitWidth,
	
                          ),
                          onPressed: (){
                            setState(() {
                              codeChannel(2);
                              readFile("3.xlsx");
                              whatis="El-ikhbaria";
                            });
                              
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LiveOne(),
                                ),
                              );
                          },
                        ),
                        
                      )
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                      child: Container(
                        width: 0.2*widtch,
                          height: 0.2*height,
                        decoration: BoxDecoration(
                            //color: const Color(0xff03a9f4),
                            border: Border.all(
                              width: 1,
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        child: FlatButton(
                         child: Image.asset(
                  
                    'images/four.png',
                    fit: BoxFit.fitWidth,
	
                          ),
                          onPressed: (){
                            setState(() {
                              codeChannel(3);
                              readFile("4.xlsx");
                              whatis="El-Amazighia";
                            });
                              
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LiveOne(),
                                ),
                              );
                          },
                        ),
                        
                      )
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                      child: Container(
                        width: 0.2*widtch,
                          height: 0.2*height,
                        decoration: BoxDecoration(
                            //color: const Color(0xff03a9f4),
                            border: Border.all(
                              width: 1,
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        child: FlatButton(
                         child: Image.asset(
                  
                    'images/five.png',
                    fit: BoxFit.fitWidth,
	
                          ),
                          onPressed: (){
                            setState(() {
                              codeChannel(4);
                              readFile("5.xlsx");
                              whatis="coran kareem";
                            });
                              
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LiveOne(),
                                ),
                              );
                          },
                        ),
                        
                      )
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                      child: Container(
                        width: 0.2*widtch,
                          height: 0.2*height,
                        decoration: BoxDecoration(
                            //color: const Color(0xff03a9f4),
                            border: Border.all(
                              width: 1,
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        child: FlatButton(
                         child: Image.asset(
                  
                    'images/six.png',
                    fit: BoxFit.fitWidth,
	
                          ),
                          onPressed: (){
                            setState(() {
                              codeChannel(5);
                              readFile("6.xlsx");
                              whatis="El-Djazairia";
                            });
                              
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LiveOne(),
                                ),
                              );
                          },
                        ),
                        
                      )
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                      child: Container(
                        width: 0.2*widtch,
                          height: 0.2*height,
                        decoration: BoxDecoration(
                            //color: const Color(0xff03a9f4),
                            border: Border.all(
                              width: 1,
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        child: FlatButton(
                         child: Image.asset(
                  
                    'images/seven.png',
                    fit: BoxFit.fitWidth,
	
                          ),
                          onPressed: (){
                            setState(() {
                              codeChannel(6);
                              readFile("7.xlsx");
                              whatis="El-Maarifa";
                            });
                              
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LiveOne(),
                                ),
                              );
                          },
                        ),
                        
                      )
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                      child: Container(
                        width: 0.2*widtch,
                          height: 0.2*height,
                        decoration: BoxDecoration(
                            //color: const Color(0xff03a9f4),
                            border: Border.all(
                              width: 1,
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        child: FlatButton(
                         child: Image.asset(
                  
                    'images/eight.png',
                    fit: BoxFit.fitWidth,
	
                          ),
                          onPressed: (){
                            setState(() {
                              codeChannel(7);
                              readFile("8.xlsx");
                              whatis="El-Dhakira";
                            });
                              
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LiveOne(),
                                ),
                              );
                          },
                        ),
                        
                      )
                      ),

                    ],
                  ),
                ],
              ),
            ) ,
          )

    );
  }
}
