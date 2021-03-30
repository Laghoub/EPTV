import 'dart:convert';
import 'dart:developer';
import 'package:entv/Categorie/education.dart';
import 'package:entv/Categorie/emission.dart';
import 'package:entv/Categorie/journal.dart';
import 'package:entv/Categorie/sport.dart';
import 'package:entv/about.dart';
import 'package:entv/categories.dart';
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
import 'package:url_launcher/url_launcher.dart';
import 'categories.dart';





class Accueil extends StatelessWidget {
  

  final appTitle = 'Accueil';

  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
        defaultBrightness: Brightness.dark,
        data: (brightness) => ThemeData(
          primarySwatch: Colors.blue,
          brightness: brightness,
        ),
        themedWidgetBuilder: (context, theme) {
          return MaterialApp(
              title: 'EPTV',
              theme: theme,
              home: AccueilPage(),
              routes: <String,WidgetBuilder>{
                "/accueil":(BuildContext context) => Accueil(),
              }
          );
        });
  }
}



class AccueilPage extends StatefulWidget {
  @override
  _AccueilPageState createState() => _AccueilPageState();
}
class _AccueilPageState extends State<AccueilPage> {


Future<bool> _onBackPressed() {
    double height = MediaQuery.of(context).size.height;
    return showDialog(
      context: context,
      builder: (context) =>AlertDialog(
        title: Text("Voulez-vous quitter l'application ?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: height*0.025)),
        actions: <Widget>[
          FlatButton(
            onPressed: () => Navigator.pop(context,false), 
            child: Text("Non", style: TextStyle(fontWeight: FontWeight.bold, fontSize: height*0.023))
          ),
          FlatButton(
            onPressed: () => SystemChannels.platform.invokeMethod('SystemNavigator.pop'), 
            child: Text("Oui", style: TextStyle(fontWeight: FontWeight.bold, fontSize: height*0.023))
          ),
        ],
      )
    );
  }




  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
  Position _currentPosition;
  String _currentAddress;
  var temp;
  bool one=false,two=false,three=false,four=false,five=false,six=false,seven=false,eight=false;
  bool show=false;
  final controllerEntry = TextEditingController();



  ///////////////A PROPOS /////////////


  /*YOUTUBE CONTROLLER*/
  
///////////////////////////////////////
  Future getWeather ()async{
  http.Response response = await http.get("http://api.openweathermap.org/data/2.5/weather?q=Algeria&units=metric&appid=06f4eae6e5aba2e682e5b16f4c0d28ba");
  var results = jsonDecode(response.body);
  setState(() {
    this.temp = results['main']['temp'];
  });
  }

  List<String> affichage= [
  'chaîne trouvée',
    'Aucune chaîne trouvée, veuillez saisir un numéro entre 1 et 8'
  ];
  int k=0;
  int choix=0;
  void ChoiceChannels(){
     choix = int.parse(controllerEntry.text);
    if (choix >8 || choix<1){
      k=1;
      one=false;two=false;three=false;four=false;five=false;six=false;seven=false;eight=false;
      show=true;

    }else{
      k=0;
    }
    if (choix==1){
      one=true;
      two=false;
      three = false;
      four=false;
      five = false;
      six=false;
      seven=false;
      eight=false;
    }
    if (choix==2){
      two=true;
      one=false;
      three = false;
      four=false;
      five = false;
      six=false;
      seven=false;
      eight=false;
    }
    if (choix==3){
      three=true;
      one=false;
      two = false;
      four=false;
      five = false;
      six=false;
      seven=false;
      eight=false;
    }
    if (choix==4){
      four=true;
      one=false;
      two = false;
      three=false;
      five = false;
      six=false;
      seven=false;
      eight=false;
    }
    if (choix==5){
      five=true;
      one=false;
      two = false;
      three=false;
      four = false;
      six=false;
      seven=false;
      eight=false;
    }
    if (choix==6){
      six=true;
      one=false;
      two = false;
      three=false;
      four = false;
      five=false;
      seven=false;
      eight=false;
    }
    if (choix==7){
      seven=true;
      one=false;
      two = false;
      three=false;
      four = false;
      five=false;
      six=false;
      eight=false;
    }
    if (choix==8){
      eight=true;
      one=false;
      two = false;
      three=false;
      four = false;
      five=false;
      six=false;
      seven=false;
    }
  }


  int choixUser(){
    return int.parse(controllerEntry.text);
    
  }
  String afficher(k){
    return affichage[k];
  }
  @override

  void initState() {
    super.initState();
    _getCurrentLocation();
    this.getWeather();
  }
  @override
   _getCurrentLocation(){
    geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best).then((Position position){
     setState(() {
       _currentPosition=position;
     });
     _getAddressFromLatLng();

    }).catchError((e) {
      print(e);
    });

   }

  _getAddressFromLatLng() async {
    try {
      List<Placemark> p = await geolocator.placemarkFromCoordinates(
          _currentPosition.latitude, _currentPosition.longitude);

      Placemark place = p[0];

      setState(() {
        _currentAddress =
        "${place.locality}, ${place.postalCode}, ${place.country}";
      });
    } catch (e) {
      print(e);
    }
  }


String fb= 'https://www.facebook.com/eptv.dz';
String ins= 'https://www.instagram.com/entvofficiel/';
String tw = 'https://twitter.com/entv_dz';
String lk = 'https://www.entv.dz/accueil/';

  _launchURL(String urls) async {
     String url = urls;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  
@override

  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double widtch=MediaQuery.of(context).size.width;
    DateTime now = new DateTime.now();
    return WillPopScope(
      onWillPop: _onBackPressed,
    child: Scaffold(
      appBar: AppBar(
        title: Text( 'Accueil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 0.03*height,
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Column(
                  children: <Widget>[
                    Text('EPTV en direct',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 0.06*widtch,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,

                      ),),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Service public, message d'information",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 0.04*widtch,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,

                      ),),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.date_range,
                          color:  Colors.blue,
                          size: 0.06*widtch,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Date:  ${now.day} - ${now.month} - ${now.year}',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 0.05*widtch,


                          ),),
                      ],

                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.place,
                          color: Colors.blue,
                          size: 0.06*widtch,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        if (_currentPosition != null &&
                            _currentAddress != null)
                        Text(_currentAddress != null ? _currentAddress : "Activez votre localisation",
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 0.05*widtch,


                          ),),
                      ],

                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.wb_sunny,
                          color:  Colors.blue,
                          size: 0.06*widtch,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(temp != null ? temp.toString() +"°C" : "Chargement ...",
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 0.05*widtch,

                          ),),
                      ],

                    ),
                  ],
                ),

              ),
              SizedBox(
                height: 20,
              ),

              /*
              Container(
            //width: 150,
            height: 0.1*height,
                child:TextField(
                  controller: controllerEntry,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 0.055*widtch,

                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(6),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color:  Colors.blue,
                    ),
                    hintText: 'Entrer le Num de la chaîne',
                    hoverColor:  Colors.blue,


                  ),
                  textAlign: TextAlign.center,

                  //textDirection: TextDirection.rtl,

                ),


          ),
              SizedBox(
                height: 15,
              ),
               RaisedButton(
                onPressed:(){
                  setState(() {

                    ChoiceChannels();

                    codeChannel(choixUser()-1);
                    readFile(choixUser().toString()+".xlsx");
                  });
                },
                child: const Text("Valider votre choix"),
              ),
              SizedBox(
                height: 25,
              ),
              Visibility(
                visible: show,
                child: Text(
                  afficher(k),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 0.055*widtch,
                    //fontWeight: FontWeight.bold,

                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Visibility(
                visible: one,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child:Container(
                        width: 0.2*widtch,
                        height: 0.2*height,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('images/one.png'),
                            //fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          FlatButton(
                            child: Container(
                              width: double.infinity,
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xff388E3C),
                              ),
                              padding: const EdgeInsets.all(11.0),

                              child:
                              Text('Programme',
                                style: TextStyle(fontSize: 0.05*widtch , color: Colors.white ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Prgmch(),
                                ),
                              );
                          },
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          FlatButton(
                            child: Container(
                              width: double.infinity,
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xffD32F2F),
                              ),
                              padding: const EdgeInsets.all(11.0),

                              child:
                              Text('En direct',
                                style: TextStyle(fontSize: 0.05*widtch , color: Colors.white ),
                                textAlign: TextAlign.center,


                              ),
                            ),
                            onPressed: (){

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LiveOne(),
                                ),
                              );
                          },
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
              Visibility(
                visible: two,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child:Container(
                        width: 0.2*widtch,
                        height: 0.2*height,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('images/two.png'),
                            //fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          FlatButton(
                            child: Container(
                              width: double.infinity,
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xff388E3C),
                              ),
                              padding: const EdgeInsets.all(11.0),

                              child:
                              Text('Programme',
                                style: TextStyle(fontSize: 0.05*widtch , color: Colors.white ),
                                textAlign: TextAlign.center,


                              ),
                            ),
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Prgmch(),
                                ),
                              );
                          },
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          FlatButton(
                            child: Container(
                              width: double.infinity,
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xffD32F2F),
                              ),
                              padding: const EdgeInsets.all(11.0),

                              child:
                              Text('En direct',
                                style: TextStyle(fontSize: 0.05*widtch , color: Colors.white ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            onPressed: (){

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LiveOne(),
                                ),
                              );
                          },
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
              Visibility(
                visible: three,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child:Container(
                        width: 0.2*widtch,
                        height: 0.2*height,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('images/three.png'),
                            //fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          FlatButton(
                            child: Container(
                              width: double.infinity,
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xff388E3C),
                              ),
                              padding: const EdgeInsets.all(11.0),

                              child:
                              Text('Programme',
                                style: TextStyle(fontSize: 0.05*widtch , color: Colors.white ),
                                textAlign: TextAlign.center,


                              ),
                            ),
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Prgmch(),
                                ),
                              );
                          },
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          FlatButton(
                            child: Container(
                              width: double.infinity,
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xffD32F2F),
                              ),
                              padding: const EdgeInsets.all(11.0),

                              child:
                              Text('En direct',
                                style: TextStyle(fontSize: 0.05*widtch , color: Colors.white ),
                                textAlign: TextAlign.center,


                              ),
                            ),
                            onPressed: (){

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LiveOne(),
                                ),
                              );
                          },
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
              Visibility(
                visible: four,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child:Container(
                        width: 0.2*widtch,
                        height: 0.2*height,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('images/four.png'),
                            //fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          FlatButton(
                            child: Container(
                              width: double.infinity,
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xff388E3C),
                              ),
                              padding: const EdgeInsets.all(11.0),

                              child:
                              Text('Programme',
                                style: TextStyle(fontSize: 0.05*widtch , color: Colors.white ),
                                textAlign: TextAlign.center,


                              ),
                            ),
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Prgmch(),
                                ),
                              );
                          },
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          FlatButton(
                            child: Container(
                              width: double.infinity,
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xffD32F2F),
                              ),
                              padding: const EdgeInsets.all(11.0),

                              child:
                              Text('En direct',
                                style: TextStyle(fontSize: 0.05*widtch , color: Colors.white ),
                                textAlign: TextAlign.center,


                              ),
                            ),
                            onPressed: (){

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LiveOne(),
                                ),
                              );
                          },
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
              Visibility(
                visible: five,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child:Container(
                        width: 0.2*widtch,
                        height: 0.2*height,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('images/five.png'),
                            //fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          FlatButton(
                            child: Container(
                              width: double.infinity,
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xff388E3C),
                              ),
                              padding: const EdgeInsets.all(11.0),

                              child:
                              Text('Programme',
                                style: TextStyle(fontSize: 0.05*widtch , color: Colors.white ),
                                textAlign: TextAlign.center,


                              ),
                            ),
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Prgmch(),
                                ),
                              );
                          },
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          FlatButton(
                            child: Container(
                              width: double.infinity,
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xffD32F2F),
                              ),
                              padding: const EdgeInsets.all(11.0),

                              child:
                              Text('En direct',
                                style: TextStyle(fontSize: 0.05*widtch , color: Colors.white ),
                                textAlign: TextAlign.center,


                              ),
                            ),
                            onPressed: (){

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LiveOne(),
                                ),
                              );
                          },
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
              Visibility(
                visible: six,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child:Container(
                        width: 0.2*widtch,
                        height: 0.2*height,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('images/six.png'),
                            //fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          FlatButton(
                            child: Container(
                              width: double.infinity,
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xff388E3C),
                              ),
                              padding: const EdgeInsets.all(11.0),

                              child:
                              Text('Programme',
                                style: TextStyle(fontSize: 0.05*widtch , color: Colors.white ),
                                textAlign: TextAlign.center,


                              ),
                            ),
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Prgmch(),
                                ),
                              );
                          },
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          FlatButton(
                            child: Container(
                              width: double.infinity,
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xffD32F2F),
                              ),
                              padding: const EdgeInsets.all(11.0),

                              child:
                              Text('En direct',
                                style: TextStyle(fontSize: 0.05*widtch , color: Colors.white ),
                                textAlign: TextAlign.center,


                              ),
                            ),
                            onPressed: (){

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LiveOne(),
                                ),
                              );
                          },
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
              Visibility(
                visible: seven,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child:Container(
                        width: 0.2*widtch,
                        height: 0.2*height,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('images/seven.png'),
                            //fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          FlatButton(
                            child: Container(
                              width: double.infinity,
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xff388E3C),
                              ),
                              padding: const EdgeInsets.all(11.0),

                              child:
                              Text('Programme',
                                style: TextStyle(fontSize: 0.05*widtch , color: Colors.white ),
                                textAlign: TextAlign.center,


                              ),
                            ),
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Prgmch(),
                                ),
                              );
                          },
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          FlatButton(
                            child: Container(
                              width: double.infinity,
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xffD32F2F),
                              ),
                              padding: const EdgeInsets.all(11.0),

                              child:
                              Text('En direct',
                                style: TextStyle(fontSize: 0.05*widtch , color: Colors.white ),
                                textAlign: TextAlign.center,


                              ),
                            ),
                            onPressed: (){

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LiveOne(),
                                ),
                              );
                          },
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
              Visibility(
                visible: eight,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child:Container(
                        width: 0.2*widtch,
                        height: 0.2*height,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('images/eight.png'),
                            //fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          FlatButton(
                            child: Container(
                              width: double.infinity,
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xff388E3C),
                              ),
                              padding: const EdgeInsets.all(11.0),

                              child:
                              Text('Programme',
                                style: TextStyle(fontSize: 0.05*widtch , color: Colors.white ),
                                textAlign: TextAlign.center,


                              ),
                            ),
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Prgmch(),
                                ),
                              );
                          },
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          FlatButton(
                            child: Container(
                              width: double.infinity,
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xffD32F2F),
                              ),
                              padding: const EdgeInsets.all(11.0),

                              child:
                              Text('En direct',
                                style: TextStyle(fontSize: 0.05*widtch , color: Colors.white ),
                                textAlign: TextAlign.center,


                              ),
                            ),
                            onPressed: (){

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LiveOne(),
                                ),
                              );
                          },
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),

*/


            Card(

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.touch_app, ),
              title: Text('Suivez "EPTV" sur les réseaux sociaux'),

            ),
          ],
        ),
            ),


            SizedBox(
              height: 30,
            ),


              Row(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('images/facebook.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: FlatButton(
                          onPressed: (){
                            _launchURL(fb);
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(

                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('images/instagram.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: FlatButton(
                          onPressed: (){
                            _launchURL(ins);
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(

                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: 56.88,
                        height: 56.88,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('images/twitter.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: FlatButton(
                          onPressed: (){
                            _launchURL(tw);

                          },
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(

                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('images/internet.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: FlatButton(
                          onPressed: (){
                            _launchURL(lk);
                          },
                        ),
                      ),
                    ),
                  ],
                ),

              SizedBox(
                height:30,
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.place, ),
                      title: Text('21, Boulevard des Martyrs.El Mouradia,Alger, Algérie'),

                    ),
                  ],
                ),
              ),


            ],

          ),


        ),
      ),

      //MENU
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Container(
                        width: 100.0,
                        height: 120.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('images/logo_entv.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'EPTV',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),

                          ),
                          Container(
                            child: Text(
                              'Regardez votre chaîne préférée',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 16,


                              ),
                            ),

                          ),
                        ],
                      ),
                    ),

                  ],
                )

            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.blue,
                size: 32,
              ),
              title: const Text("Accueil",
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 20,
                  //fontWeight: FontWeight.bold,

                ),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Accueil(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.live_tv,
                color: Colors.blue,
                size: 32,
              ),
              title: const Text("chaînes",
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 20,
                  //fontWeight: FontWeight.bold,

                ),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Chaines(),
                  ),
                );
              },

            ),
            ListTile(
              leading: const Icon(
                Icons.playlist_play,
                color: Colors.blue,
                size: 32,
              ),
              title: const Text("Programme TV",
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 20,
                  //fontWeight: FontWeight.bold,

                ),),
              onTap: () {
                setState(() {
                    readFile((1).toString()+".xlsx");
                    
                  });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Programme(),
                  ),
                );
              },
            ),

              ListTile(
              leading: const Icon(
                Icons.category,
                color: Colors.blue,
                size: 32,
              ),
              title: const Text("Catégories",
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 20,
                  //fontWeight: FontWeight.bold,

                ),),
              onTap: () {
                setState(() {
                              Findprogram("7");
                             
                            });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => categories(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(
                Icons.brightness_4,
                color: Colors.blue,
                size: 32,
              ),
              title: const Text("Mode sombre",
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 20,
                  //fontWeight: FontWeight.bold,

                ),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ModeSombre(),
                  ),
                );
              },

            ),
            ListTile(
              leading: const Icon(
                Icons.tv,
                color: Colors.blue,
                size: 32,
              ),
              title: const Text("Fréquences",
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 20,
                  //fontWeight: FontWeight.bold,

                ),),

                onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Frequences(),
                  ),
                );
              },

            ),
            ListTile(
              leading: const Icon(
                Icons.info_outline,
                color: Colors.blue,
                size: 32,
              ),
              title: const Text("A propos",
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 20,
                  //fontWeight: FontWeight.bold,

                ),),
onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => About(),
                  ),
                );
              },
            ),


          ],
        ),
      ),
    ),
    );
  }
}