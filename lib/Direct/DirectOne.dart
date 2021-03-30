import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:excel/excel.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'dart:async';
import 'package:entv/Accueil.dart';
import 'package:entv/ProgramClass.dart';



class LiveOne extends StatefulWidget {
  @override
  _LiveOneState createState() => _LiveOneState();
}

class _LiveOneState extends State<LiveOne> {
  
  
  YoutubePlayerController _controller= YoutubePlayerController(
initialVideoId: codeChoisi,
flags: YoutubePlayerFlags(
  autoPlay: true,
  mute: false,
),

);

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double widtch=MediaQuery.of(context).size.width;
    return Scaffold(
appBar: AppBar(
        title: Text( 'En direct ' + " ${whatis}"),
        
      ),
    body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(children: <Widget>[
        YoutubePlayer(
          controller:_controller, 
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.red,

        ),

        SizedBox(
          height:30,
        ),

        
        for (var item in listmtn) Card(
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
            )
      ],),
    ),
    );
  }
}
