import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'Accueil.dart';
 
class GetStartedPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GetStartedPageState();
  }
}
 
class GetStartedPageState extends State<GetStartedPage> with TickerProviderStateMixin {
  
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
 
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
 
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,  
      child: Scaffold(
        key: _globalKey,
        body: OverBoard(
          pages: pages,
          showBullets: true,
          finishText: "COMMENCER",
          nextText: "SUIVANT",
          skipText: "PASSER",
          skipCallback: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AccueilPage()));
          },
          finishCallback: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AccueilPage()));
          },
        ),
      )
    );
  }
 
  final pages = [
    PageModel(
      color: const Color(0xfff0DBBD6),
      imageAssetPath: 'images/live.png',
      title: "Diffusion en direct",
      body: 'Regardez en direct votre chaîne préférée !',
      doAnimateImage: true),
    PageModel(
      color: const Color(0xfff11A0B6),
      imageAssetPath: 'images/program.png',
      title: 'Le programme de la journée',
      body: "Trouvez ce qui va être diffusé durant la journée !",
      doAnimateImage: true),
    PageModel(
      color: const Color(0xfff157DE6),
      imageAssetPath: 'images/choice.png',
      title: 'Et ceci, pour les 8 chaînes',
      body: "Toutes les chaînes de l'entv de 1 à 8 ! ",
      doAnimateImage: true),
      PageModel(
      color: Colors.blue,
      imageAssetPath: 'images/go.png',
      title: "C'est parti !",
      body: ' ',
      doAnimateImage: true),
  ];
}
