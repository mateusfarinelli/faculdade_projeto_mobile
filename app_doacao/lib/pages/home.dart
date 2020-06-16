import 'package:flutter/material.dart';
import './newIncident.dart';
import './incident_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BeTheHero",
      home: Scaffold(
        body:  ListView(
            scrollDirection: Axis.vertical,
            reverse: false,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child:
                    Image.asset(
                      'logo.png', 
                      width: 150.0,                      
                    ),                  
                ),
              ),
              Container(
               padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.30),
                child: RaisedButton(
                  padding: EdgeInsets.all(10.0),
                  color: Colors.red[900],             
                  child: Text('Novo incidente',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewIncident())
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.14),
                  child: Text(
                    'Bem-vindo!',
                    style: TextStyle(
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
              ),
              Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.14),
                child: Text(
                  '\nEscolha um incidente e salve o dia de alguém.\n',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ), 
                             
              SizedBox(height: 15.0,),
              new IncidentComponent('APAE', 'Precisamos comprar uma cadeira de rodas mas vou criar uma descriação', '5000,00'),
              
              SizedBox(height: 15.0,),
              new IncidentComponent('APAE', 'Precisamos comprar uma cadeira de rodas mas vou criar uma descriação', '5000,00'),
              
              SizedBox(height: 15.0,),
              new IncidentComponent('APAE', 'Precisamos comprar uma cadeira de rodas mas vou criar uma descriação', '5000,00'),
              
              SizedBox(height: 15.0,),
              new IncidentComponent('APAE', 'Precisamos comprar uma cadeira de rodas mas vou criar uma descriação', '5000,00'),
              
              SizedBox(height: 15.0,),
              new IncidentComponent('APAE', 'Precisamos comprar uma cadeira de rodas mas vou criar uma descriação', '5000,00'),
              
              SizedBox(height: 15.0,),
              new IncidentComponent('APAE', 'Precisamos comprar uma cadeira de rodas mas vou criar uma descriação', '5000,00'),
              
              SizedBox(height: 15.0,),
              new IncidentComponent('APAE', 'Precisamos comprar uma cadeira de rodas mas vou criar uma descriação', '5000,00'),
              
              SizedBox(height: 15.0,),
            ],
        ),
        backgroundColor: Colors.grey[300]
      )
    );
  }
}