import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {

  final DocumentSnapshot incident;
  Details({this.incident});


  // String title = widget.incident.data["title"]

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(children: [
        Row(
            verticalDirection: VerticalDirection.down,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.04,
              ),
              Image.asset(
                '../../assets/logo.png',
                width: MediaQuery.of(context).size.width * 0.15,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.65,
              ),
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
            ]),
        Center(
            child: Container(
                width: MediaQuery.of(context).size.width * 0.65,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.grey[200]),
                  borderRadius: BorderRadius.circular(2),
                ),
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.only(bottom: 15.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Titulo',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Text(widget.incident.data["title"],
                          style: TextStyle(fontSize: 14)),
                      Text('\n\nDescrição',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Text(widget.incident.data["description"],
                          style: TextStyle(fontSize: 14)),
                      Text('\n\nValor',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Text('R\$ ' + widget.incident.data["value"].toString(),
                          style: TextStyle(fontSize: 14))
                    ]))),
        Center(
          child: RaisedButton(
              color: Colors.red[900],
              child: Text(
                "Doar",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              textColor: Colors.white,
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Obrigado"),
                        content: Text("Doação confirmada!"),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("Fechar"),
                            onPressed: () {
                              Navigator.pushNamed(context, "/home");
                            },
                          )
                        ],
                      );
                    });
              }),
        ),
      ]),
    );
  }
}
