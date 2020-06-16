import 'package:flutter/material.dart';
import '../pages/details.dart';

class IncidentComponent extends StatelessWidget {

  final String entidade;
  final String descricao;
  final String quantia;

  IncidentComponent(this.entidade, this.descricao, this.quantia): super();

  @override
  Widget build(BuildContext context) {
    return new Center(
        child:
          Container(
            width: MediaQuery.of(context).size.width * 0.65,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.grey[200]),
              borderRadius: BorderRadius.circular(2),
            ),
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Entidade', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 )),
                Text(entidade, style: TextStyle(fontSize: 14)),
                Text('\n\nDescrição', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 )),
                Text(descricao, style: TextStyle(fontSize: 14)),
                Text('\n\nValor', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 )),
                Text('R\$ ' + quantia, style: TextStyle(fontSize: 14)),
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
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Details()),
                    );
                  } 
                ),
              ],
            ),
          ),
     );
  }
}