import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text("Sobre"),
        ),
        body: Sobre(),
      ),
    );
  }
}

class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: ListView(
        scrollDirection: Axis.vertical,
        reverse: false,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Image.asset(
                  'about_photo_mateus.jpeg',
                  width: 150.0,
                ),
                Flexible(
                    child: (Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Olá, tudo bem?\nMe chamo Mateus Farinelli Zardo (o cara da foto ali do lado)! Atualmente estudo Analíse e Desenvolvimento de Sistemas na FATEC-RP',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ))),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            child: Row(
              children: <Widget>[
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Text(
                      'Esse aplicativo foi desenvolvido como parte da avaliação da disciplina de Programção para Dispositivos Móveis, sendo o Dr. Rodrigo de Oliveira Plotze o professor responsavel pela disciplina.\n\nO BeTheHero teve seu conceito desenvolvido pela equipe da Rocketseat, uma empresa voltado para o ensino de tecnologia. Estou utilizando o mesmo projeto, anteriormente desenvolvido com a stack Javascript (Node, ReactiveJS e Reactive Native).',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // ## Tentativa de acesso a link externos ##

          // SizedBox(height: 15.0,),
          // Container(
          //   child: Row(
          //     children: <Widget>[
          //       Flexible(
          //         child:
          //         Padding(
          //           padding: EdgeInsets.only(right: 20.0),
          //           child:
          //             Text ('Para mais informações sobre a FATEC-RP, sobre o desenvolvedor ou sobre a Rocketseat acesse:',
          //               style: TextStyle(
          //                 fontSize: 16.0,
          //               ),
          //             textAlign: TextAlign.justify,
          //             ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

          //SizedBox(height: 15.0,),
          // Container(
          //   child: Row(
          //     children: <Widget>[
          //       Flexible(
          //         child:
          //         InkWell(
          //           child:
          //             Text ('Professor Dr. Rodrigo Oliveira Plotze',
          //               style: TextStyle(
          //                 fontSize: 16.0,
          //               ),
          //             textAlign: TextAlign.justify,
          //             ),
          //             onTap: () async {
          //               if (await canLaunch('http://buscatextual.cnpq.br/buscatextual/visualizacv.do?metodo=apresentar&id=K4737094A1')) {
          //                 await launch('http://buscatextual.cnpq.br/buscatextual/visualizacv.do?metodo=apresentar&id=K4737094A1');
          //               }
          //             }
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // ## Fim tentativa de acesso a links externos ##
        ],
      ),
    );
  }
}
