import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:excel/excel.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'dart:async';
import 'Accueil.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

String whatis="";

class Prgme {
   Prgme(this.prenom,this.heure,this.num,this.status);
   String prenom;
   String heure;
   String num;
   String status;
   
}

class Categorie {
   Categorie(this.nom,this.heure,this.duree,this.id,this.ch);
   String nom;
   String heure;
   String duree;
   String id;
   String ch;
   
}

String codeChoisi;
List <Categorie> listcat = [

  ];

List <Prgme> list = [

  ];

  List <Prgme> listmtn = [

  ];

  List<String> code = [
    "hQPj5UMXGPA","OA9fU3Xpvbw","t3K0BOxrSqU","fciFWhJ4boo","5oThI9qKpYI","oIyBWdUBKMw","J5naGBa44iE","eY53viWD3Bo",
  ];

  

  void readFile(String namefile) async{

    
    ByteData data = await rootBundle.load("assets/$namefile");
    var bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    var excel = Excel.decodeBytes(bytes, update: true);
    TimeOfDay _hour = TimeOfDay.now();
    for (var table in excel.tables.keys) {
      print(table); //sheet Name
      print(excel.tables[table].maxCols);
      print(excel.tables[table].maxRows);
      if (list.isEmpty == false){
      list.clear();
    }
    if (listmtn.isEmpty == false){
      listmtn.clear();
    }
    
      for (var row in excel.tables[table].rows) {
        if (row[3]==null){
          row[3]='';
        }
        Prgme prgme = new Prgme(row[0], row[1], row[2], row[3]);
        list.add(prgme);
        TimeOfDay _startTime = TimeOfDay(hour:int.parse(row[1].split(":")[0]),minute: int.parse(row[1].split(":")[1]));
        TimeOfDay _finishTime = TimeOfDay(hour:int.parse(row[4].split(":")[0]),minute: int.parse(row[4].split(":")[1]));
        double timeactuel = _hour.hour + _hour.minute/60;
        double timeprgmedb = _startTime.hour + _startTime.minute/60;
        double timeprgmefn = _finishTime.hour + _finishTime.minute/60;
        if ((timeprgmedb <= timeactuel)& (timeactuel <= timeprgmefn)) {
        listmtn.add(prgme);
        } 
      }
    }
  }

 void codeChannel(int id){
  codeChoisi= code[id] ; 
 }


class choseprgrm{
  choseprgrm(this.nprgrm,this.icon);
String nprgrm;
Icon icon;
}


void Findprogram(String number) async{
  
    ByteData data = await rootBundle.load("assets/9.xlsx");
    var bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    var excel = Excel.decodeBytes(bytes, update: true);
    
    for (var table in excel.tables.keys) {
    //  if (listcat.isEmpty == false){
      listcat.clear();
//}
      print(table); //sheet Name
      print(excel.tables[table].maxCols);
      print(excel.tables[table].maxRows);
      
    
    
      for (var row in excel.tables[table].rows) {
        
        
        if(number==row[3]){
          Categorie cate = new Categorie(row[0], row[1], row[2], row[3],row[4]);
            listcat.add(cate);
        }
        
        
       
        
      }
    }
  }