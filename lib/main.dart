import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:entv/Accueil.dart';
import 'package:entv/Chaines.dart';
import 'package:flutter/material.dart';
import 'Direct/DirectOne.dart';
import 'ModeSombre.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'ProgramClass.dart';
import 'Started.dart';

void main() {
runApp(MyApp());
} 


class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  return DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) => ThemeData(
          primarySwatch: Colors.blue,
          brightness: brightness,
        ),
        themedWidgetBuilder: (context, theme) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: theme,
            home: MyHomePage(),
            routes: <String,WidgetBuilder>{
        "/accueil":(BuildContext context) => Accueil(),
        "/start":(BuildContext context) => GetStartedPage(),
      }
          );
        });
}
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //Acceuil

  
double _initial=0.0;

bool _boole = false;
  void update(){
    Timer.periodic(Duration(milliseconds: 100), (timer){
     setState(() {
       _initial=_initial+0.0005;
       if (_initial >=0.99){
         _boole=true;
       }
     });

    });
  }

 




  @override
  Widget build(BuildContext context) {
    
    update();
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              mainAxisAlignment : MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  width: 172.0,
                  height: 172.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('images/logo_entv.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                LinearProgressIndicator(
                  backgroundColor: const Color(0xffbdbdbd),
                  valueColor: AlwaysStoppedAnimation(Colors.red),
                  value: _initial,

                ),
                SizedBox(
                  height: 30,
                ),
                Visibility(
                  visible: _boole,
                  child: RaisedButton(
                    hoverColor: Colors.red,
                    color: Colors.green,
                onPressed: () async{
                  SharedPreferences preferences = await SharedPreferences.getInstance();
   bool firstTime = (preferences.getBool('first_time') ?? true);
                  if (firstTime) 
                {    
            Navigator.of(context).pushNamed("/start");
            preferences.setBool("first_time", false);
            }
              else {
            Navigator.of(context).pushNamed("/accueil");
              }

                 setState(() {
                              Findprogram("1");
                              
                          
                            });
                  
                },
                
                child: const Text("Démarrer", style: TextStyle(
                  color: Colors.white,
                ),),
              ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}




