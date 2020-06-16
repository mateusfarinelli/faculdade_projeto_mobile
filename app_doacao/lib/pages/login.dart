import 'package:flutter/material.dart';
import './home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BeTheHero",
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.red[900],
        //   title: Text("Login")
        // ),
        body: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width *0.15),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Image.asset(
                'logo.png'
              ),
              SizedBox(
                height: 50.0,
              ),
              TextFormField(
                cursorColor: Colors.grey[700],
                keyboardType: TextInputType.emailAddress,
                decoration: 
                  InputDecoration(
                    labelText: "E-mail",
                    labelStyle: TextStyle(
                      color: Colors.grey[600],
                    ),
                    hoverColor: Colors.grey[100],
                    fillColor: Colors.grey[100],
                    filled: true,                 
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey[300], 
                        width: (1.0),
                      ),
                    ),
                    icon: Icon(Icons.email, color: Colors.red[900]),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey[300], 
                        width: (2.0),
                      ),
                    ),
                  )
                ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                cursorColor: Colors.grey[700],
                obscureText: true,
                decoration: 
                  InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      color: Colors.grey[600],
                    ),
                    hoverColor: Colors.grey[100],
                    fillColor: Colors.grey[100],
                    filled: true,                 
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey[300], 
                        width: (1.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey[300], 
                        width: (2.0),
                      ),
                    ),
                    icon: Icon(Icons.lock, color: Colors.red[900])
                )                
              ),
              SizedBox(
                height: 50.0,
              ),
              RaisedButton(
                child: Text("Login", style: TextStyle(fontWeight: FontWeight.bold),),
                textColor: Colors.white,
                color: Colors.red[900],
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
              )
            ],
          ), 
        ),
        backgroundColor: Colors.grey[300],
      )
    );
  }
}