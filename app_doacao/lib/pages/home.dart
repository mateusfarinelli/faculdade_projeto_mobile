import 'dart:async';

import 'package:app_doacao/model/Incident.dart';
import 'package:app_doacao/pages/details.dart';
import 'package:app_doacao/pages/newIncident.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final db = Firestore.instance;
  final String collection = "incidents";

  List<Incident> list = List();

  StreamSubscription<QuerySnapshot> listen;

  @override
  void initState() {
    super.initState();

    listen?.cancel();

    listen = db.collection(collection).snapshots().listen((res) {
      setState(() {
        list = res.documents.map((doc) => Incident.fromJson(doc.data)).toList();
      });
    });
  }

  @override
  void dispose() {
    listen?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Image.asset(
                'logo.png',
                width: 150.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.30),
            child: RaisedButton(
              padding: EdgeInsets.all(10.0),
              color: Colors.red[900],
              child: Text(
                'Novo incidente',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewIncident()));
              },
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.14),
            child: Text(
              'Bem-vindo!',
              style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.14),
            child: Text(
              '\nEscolha um incidente e salve o dia de alguém.\n',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
          StreamBuilder<QuerySnapshot>(
            stream: db.collection(collection).snapshots(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                case ConnectionState.waiting:
                  return Center(child: CircularProgressIndicator());
                default:
                  List<DocumentSnapshot> docs = snapshot.data.documents;
                  return ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: docs.length,
                    itemBuilder: (context, index) {
                      return new Center(
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
                            Text(list[index].title,
                                style: TextStyle(fontSize: 14)),
                            Text('\n\nDescrição',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                            Text(list[index].description,
                                style: TextStyle(fontSize: 14)),
                            Text('\n\nValor',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                            Text('R\$ ' + list[index].value.toString(),
                                style: TextStyle(fontSize: 14)),
                            FlatButton(
                                padding: EdgeInsets.zero,
                                color: Colors.transparent,
                                splashColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      'Veja mais detalhes',
                                      style: TextStyle(
                                        color: Colors.redAccent,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.redAccent,
                                      size: 16.0,
                                    )
                                  ],
                                ),
                                onPressed: () {
                                  atualizar(snapshot.data.documents[index]);
                                }),
                          ],
                        ),
                      ));
                    },
                  );
              }
            },
          )
        ],
      ),
    );
  }

  void atualizar(DocumentSnapshot incident) async {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Details(
                  incident: incident,
                )));
  }
}
