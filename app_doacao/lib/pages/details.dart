import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BeTheHero",
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Row(
          verticalDirection: VerticalDirection.down,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
            SizedBox(width: MediaQuery.of(context).size.width * 0.04,), 
            Image.asset('../../assets/logo.png',
                width: MediaQuery.of(context).size.width * 0.15,
              ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.65,),            
            Flexible(
              child: FlatButton(
                color: Colors.transparent,
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                focusColor: Colors.transparent,
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.redAccent[700],
                  size: 30,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),        
            Flexible(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.65,
                decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.grey[200]),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Row(
                  children: [
                    Text('Texto')
                  ],
                ),
              ),
            )
          ]
        ),             
      ),
    );
  }
}