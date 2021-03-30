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
import 'Categorie/journal.dart';
import 'Categorie/sport.dart';
import 'Categorie/séries.dart';
import 'Categorie/emission.dart';
import 'Categorie/education.dart';
import 'Categorie/religion.dart';
import 'Categorie/histoire.dart';
import 'Categorie/enfant.dart';

class categories  extends StatefulWidget {
  @override
  _categoriesState createState() => _categoriesState();
}

class _categoriesState extends State<categories> {


  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double widtch=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text( 'Catégories'),
        
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
              title: Text('Choix par catégorie'),
              subtitle: Text('En choisissant une catégorie, vous trouvrez tous les programme liés à cette dernière.'),
            ),

            

            
          ],
        ),
                  ),
                SizedBox(
              height:20,
            ), 

            Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        
                       width: 0.12*widtch,
                          height: 0.12*height,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              width: 1,
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        child: FlatButton(
                         child: Center(
                           child: Column(
                             mainAxisSize: MainAxisSize.min,
                             children: <Widget>[
                               Icon(Icons.public , size: 0.10*widtch,color: Colors.white,),
                               Text("Journal",style: TextStyle(
                                 fontSize: 0.05*widtch,
                                 color: Colors.white,
                               ))
                             ],
                           ),
                         ),
                          onPressed: (){
                            setState(() {
                              Findprogram("1");
                            });
                              
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => journal(),
                                ),
                              );
                          },
                        ),
                        
                      )
                      ),
                  SizedBox(
                    width: 15,
                  ),
                   Expanded(
                      child: Container(
                        
                       width: 0.12*widtch,
                          height: 0.12*height,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              width: 1,
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        child: FlatButton(
                         child: Center(
                           child: Column(
                             mainAxisSize: MainAxisSize.min,
                             children: <Widget>[
                               Icon(Icons.pool , size: 0.10*widtch,color: Colors.white,),
                               Text("Sport",style: TextStyle(
                                 fontSize: 0.05*widtch,
                                 color: Colors.white,
                               ))
                             ],
                           ),
                         ),
                          onPressed: (){
                            
                              
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => sport(),
                                ),
                              );
                          },
                        ),
                        
                      )
                      ),
                  ],
                  
                ),

                SizedBox(
                  height:15,
                ),

                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        
                       width: 0.12*widtch,
                          height: 0.12*height,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              width: 1,
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        child: FlatButton(
                         child: Center(
                           child: Column(
                             mainAxisSize: MainAxisSize.min,
                             children: <Widget>[
                               Icon(Icons.movie, size: 0.10*widtch,color: Colors.white,),
                               Text("Séries",style: TextStyle(
                                 fontSize: 0.05*widtch,
                                 color: Colors.white,
                               ))
                             ],
                           ),
                         ),
                          onPressed: (){
                            setState(() {
                              Findprogram("3");
                              
                            });
                              
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => series(),
                                ),
                              );
                          },
                        ),
                        
                      )
                      ),
                  SizedBox(
                    width: 20,
                  ),
                   Expanded(
                      child: Container(
                        
                       width: 0.12*widtch,
                          height: 0.12*height,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              width: 1,
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        child: FlatButton(
                         child: Center(
                           child: Column(
                             mainAxisSize: MainAxisSize.min,
                             children: <Widget>[
                               Icon(Icons.group_work, size: 0.10*widtch,color: Colors.white,),
                               Text("Emissions",style: TextStyle(
                                 fontSize: 0.05*widtch,
                                 color: Colors.white,
                               ))
                             ],
                           ),
                         ),
                          onPressed: (){
                            setState(() {
                              Findprogram("4");
                             
                            });
                              
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => emission(),
                                ),
                              );
                          },
                        ),
                        
                      )
                      ),
                  ],
                  
                ),

                 SizedBox(
                  height:15,
                ),

                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        
                       width: 0.12*widtch,
                          height: 0.12*height,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              width: 1,
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        child: FlatButton(
                         child: Center(
                           child: Column(
                             mainAxisSize: MainAxisSize.min,
                             children: <Widget>[
                               Icon(Icons.school, size: 0.10*widtch,color: Colors.white,),
                               Text("Education",style: TextStyle(
                                 fontSize: 0.05*widtch,
                                 color: Colors.white,
                               ))
                             ],
                           ),
                         ),
                          onPressed: (){
                            setState(() {
                              Findprogram("5");
                              
                            });
                              
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => education(),
                                ),
                              );
                          },
                        ),
                        
                      )
                      ),
                  SizedBox(
                    width: 20,
                  ),
                   Expanded(
                      child: Container(
                        
                       width: 0.12*widtch,
                          height: 0.12*height,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              width: 1,
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        child: FlatButton(
                         child: Center(
                           child: Column(
                             mainAxisSize: MainAxisSize.min,
                             children: <Widget>[
                               Icon(Icons.local_library, size: 0.10*widtch,color: Colors.white,),
                               Text("Religion",style: TextStyle(
                                 fontSize: 0.05*widtch,
                                 color: Colors.white,
                               ))
                             ],
                           ),
                         ),
                          onPressed: (){
                            setState(() {
                              Findprogram("6");
                             
                            });
                              
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => religion(),
                                ),
                              );
                          },
                        ),
                        
                      )
                      ),
                  ],
                  
                ),

                SizedBox(
                  height:15,
                ),

                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        
                       width: 0.12*widtch,
                          height: 0.12*height,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              width: 1,
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        child: FlatButton(
                         child: Center(
                           child: Column(
                             mainAxisSize: MainAxisSize.min,
                             children: <Widget>[
                               Icon(Icons.bookmark,size: 0.10*widtch,color: Colors.white,),
                               Text("Histoire",style: TextStyle(
                                 fontSize: 0.05*widtch,
                                 color: Colors.white,
                               ))
                             ],
                           ),
                         ),
                          onPressed: (){
                            setState(() {
                              Findprogram("7");
                             
                            });
                              
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => histoire(),
                                ),
                              );
                          },
                        ),
                        
                      )
                      ),
                  SizedBox(
                    width: 20,
                  ),
                   Expanded(
                      child: Container(
                        
                       width: 0.12*widtch,
                          height: 0.12*height,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              width: 1,
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        child: FlatButton(
                         child: Center(
                           child: Column(
                             mainAxisSize: MainAxisSize.min,
                             children: <Widget>[
                               Icon(Icons.child_care, size: 0.10*widtch,color: Colors.white,),
                               Text("Enfant",style: TextStyle(
                                 fontSize: 0.05*widtch,
                                 color: Colors.white,
                               ))
                             ],
                           ),
                         ),
                          onPressed: (){
                            
                              
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => enfant(),
                                ),
                              );
                          },
                        ),
                        
                      )
                      ),
                  ],
                  
                ) 
                  
                 
                ],
              ),
            ) ,
          )

    );
  }
}
