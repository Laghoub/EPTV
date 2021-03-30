import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double widtch=MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
        title: Text( 'A propos'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  color: Colors.blue,
                child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   ListTile(
                    title: Text('EPTV',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                  ),
                 
                ],),
              ),
                Image.asset(
                      
                        'images/logo_entv.png',
                        fit: BoxFit.fitWidth,
                        height: 0.4*height,
                        width: 0.4*widtch ,
	
                              ),
                              
                Card(
                child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   ListTile(
                    title: Text('Description:',style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Text('EPTV est une application mobile qui contient la diffusion en direct ainsi que le programme TV de toutes les 8 chaînes de la télévision algerienne.')
            
                  ),
                 
                ],),
              ),
                  
              Card(
                child: Column(
                  
                children: <Widget>[
                   ListTile(
                    title: Text('Informations supplémentaires:',style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget>[
                      
                      Text('Date de création: 12/12/2020'),
                      Text('Développeur: LAGHOUB Nassim'),
                       Text('Version: 1.0.0'),
                    ])
            
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