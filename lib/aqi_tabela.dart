import 'package:flutter/material.dart';
import 'package:weather_heal/drawer_widget.dart';

class TelaTabela extends StatelessWidget {
  const TelaTabela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange.shade50,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          backgroundColor: Colors.orange,
          title: Text('Cuidados'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.topCenter,
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'AQI Tabela',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                  ]),
                ),
              ),
              Container(
                height: 200,
                child: Card(
                  margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: Column(
                    children: [
                      ListTile(
                          leading: Icon(
                            Icons.cloud_queue_outlined,
                            size: 50,
                          ),
                          title: const Text(
                            'Bom',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          subtitle: Text(
                            '0 a 50',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Text(
                          'A qualidade do ar ?? satisfat??ria e a polui????o do ar apresenta pouco ou nenhum risco.',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  color: Colors.green[200],
                ),
              ),
              Container(
                height: 200,
                child: Card(
                  margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: Column(
                    children: [
                      ListTile(
                          leading: Icon(
                            Icons.cloud_queue_outlined,
                            size: 50,
                          ),
                          title: const Text(
                            'Moderado',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          subtitle: Text(
                            '51 a 100',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Text(
                          'A qualidade do ar ?? aceit??vel. No entanto, pode haver um risco para algumas pessoas, especialmente aquelas que s??o excepcionalmente sens??veis ?? polui????o do ar.',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  color: Colors.yellow[200],
                ),
              ),
              Container(
                height: 200,
                child: Card(
                  margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: Column(
                    children: [
                      ListTile(
                          leading: Icon(
                            Icons.cloud_queue_outlined,
                            size: 50,
                          ),
                          title: const Text(
                            'Pouco saud??vel',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          subtitle: Text(
                            '101 a 150',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Text(
                          'Membros de grupos sens??veis podem experimentar efeitos na sa??de. O p??blico em geral tem menos probabilidade de ser afetado.',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  color: Colors.orange[200],
                ),
              ),
              Container(
                height: 200,
                child: Card(
                  margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: Column(
                    children: [
                      ListTile(
                          leading: Icon(
                            Icons.cloud_queue_outlined,
                            size: 50,
                          ),
                          title: const Text(
                            'N??o-saud??vel',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          subtitle: Text(
                            '151 a 200',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Text(
                          'Alguns membros do p??blico em geral podem sentir efeitos na sa??de; membros de grupos sens??veis podem experimentar efeitos mais graves para a sa??de.',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  color: Colors.red[200],
                ),
              ),
              Container(
                height: 200,
                child: Card(
                  margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: Column(
                    children: [
                      ListTile(
                          leading: Icon(
                            Icons.cloud_queue_outlined,
                            size: 50,
                          ),
                          title: const Text(
                            'Muito nocivo',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          subtitle: Text(
                            '201 a 300',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Text(
                          'Alerta para a sa??de: O risco de efeitos para a sa??de aumenta para todos.',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  color: Colors.purple[200],
                ),
              ),
              Container(
                height: 200,
                child: Card(
                  margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: Column(
                    children: [
                      ListTile(
                          leading: Icon(
                            Icons.cloud_queue_outlined,
                            size: 50,
                          ),
                          title: const Text(
                            'Perigoso',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          subtitle: Text(
                            '301+',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Text(
                          'Alerta de sa??de para condi????es de emerg??ncia: todos t??m maior probabilidade de serem afetados.',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  color: Colors.brown[300],
                ),
              )
            ],
          ),
        ),
        drawer: drawerWidget(context),
      ),
    );
  }
}
