import 'package:flutter/material.dart';

class NewIncident extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.grey[200]),
            borderRadius: BorderRadius.circular(2),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.02),
                      child: 
                        Image.asset('../../assets/logo.png',
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.2,
                        )
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.06,),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.1,
                        right: MediaQuery.of(context).size.width * 0.06
                      ),
                      child: 
                        Text('Cadastrar novo caso',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 36.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.06,),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.1,
                        right: MediaQuery.of(context).size.width * 0.06
                      ),
                      child:Text('Descreva o caso detalhadamente para encontrar um herói para resolver isso.'),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.06,),
                    FlatButton(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
                      color: Colors.transparent,
                      splashColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.arrow_back,
                              color: Colors.redAccent,
                              size: 16.0,         
                            ),
                          Text(
                            'Voltar para Home',
                            style: TextStyle(
                              color: Colors.black, 
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }
                    )
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      cursorColor: Colors.grey[700],
                      maxLines: 1,
                      decoration: InputDecoration(
                        labelText: 'Titulo do caso',
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
                            width: (1.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    TextFormField(     
                      cursorColor: Colors.grey[700],
                      maxLines: 15,           
                      decoration: InputDecoration(
                        labelText: 'Descrição',
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
                            width: (1.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    TextFormField(
                      cursorColor: Colors.grey[700],
                      maxLines: 1,
                      decoration: InputDecoration(
                        labelText: 'Valor em R\$',
                          hintMaxLines: 10,
                          labelStyle: TextStyle(
                            color: Colors.grey[600],
                          ) ,
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
                            width: (1.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        child: RaisedButton(                          
                          child: Text('Registrar', style: TextStyle(fontWeight: FontWeight.bold),),
                          textColor: Colors.white,                        
                          color: Colors.red[900],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0)
                          ),                                              
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}