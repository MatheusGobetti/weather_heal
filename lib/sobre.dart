import 'package:flutter/material.dart';

class TelaSobre extends StatelessWidget {
  const TelaSobre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: Text("Sobre"),
            ),
            body: ListView(children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                child: RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: 'Descrição: ',
                        style: TextStyle(color: Colors.black, fontSize: 24))
                  ]),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                child: RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: 'Este App foi construído com o objetivo de fornecer informações sobre ' +
                            'o índice de poluição do ar (AQI). É possível consultar através da tabela ' +
                            'em que nível de poluição sua localização se encontra.',
                        style: TextStyle(
                            color: Colors.deepOrange[900], fontSize: 20))
                  ]),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                child: Center(
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: 'Tema: ',
                          style: TextStyle(color: Colors.black, fontSize: 24))
                    ]),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                child: Center(
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: 'Saúde | Qualidade do Ar',
                          style: TextStyle(
                              color: Colors.deepOrange[900], fontSize: 20))
                    ]),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                child: Center(
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: 'Desenvolvedor:',
                          style: TextStyle(color: Colors.black, fontSize: 24))
                    ]),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                child: Center(
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: 'Matheus Gobetti',
                          style: TextStyle(
                              color: Colors.deepOrange[900], fontSize: 20))
                    ]),
                  ),
                ),
              ),
              Image.asset(
                'lib/imagens/matheus-metro.jpg',
                width: 200,
                height: 200,
              )
            ])));
  }
}
