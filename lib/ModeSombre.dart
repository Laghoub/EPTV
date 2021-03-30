import 'package:dynamic_theme/theme_switcher_widgets.dart';
import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'dart:convert';
import 'dart:developer';
import 'package:entv/about.dart';
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
import 'Fréquences.dart';
import 'about.dart';

class ModeSombre extends StatefulWidget {
  ModeSombre({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ModeSombreState createState() => _ModeSombreState();
}

class _ModeSombreState extends State<ModeSombre> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mode sombre"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              Image.asset(
                  
                    'images/dark.png',
                    fit: BoxFit.fitWidth,
	
                          ),
                          SizedBox(
                height: 28,
              ),
              Text(
              
                'Le mode sombre vous permet de travailler plus confortablement sur l''application.'
                 ,style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
              ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 18,
              ),
              RaisedButton(
                onPressed: changeBrightness,
                child: const Text("switcher le mode"),
              ),

            ],
          ),
        ),
      ),
      

    );
  }

  void showChooser() {
    showDialog<void>(
        context: context,
        builder: (context) {
          return BrightnessSwitcherDialog(
            onSelectedTheme: (brightness) {
              DynamicTheme.of(context).setBrightness(brightness);
            },
          );
        });
  }

  void changeBrightness() {
    DynamicTheme.of(context).setBrightness(
        Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark);
  }


}