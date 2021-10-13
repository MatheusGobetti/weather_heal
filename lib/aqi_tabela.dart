import 'package:flutter/material.dart';
import 'package:weather_heal/drawer_widget.dart';

class TelaTabela extends StatelessWidget {
  const TelaTabela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
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
                            Icons.masks_rounded,
                            size: 50,
                          ),
                          title: const Text(
                            'Laranja',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          subtitle: Text(
                            'Lorem Ipsum',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Text(
                          'Lorem Ipsum',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.7)),
                        ),
                      ),
                    ],
                  ),
                  color: Colors.orange[500],
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
                            Icons.food_bank_rounded,
                            size: 50,
                          ),
                          title: const Text(
                            'Vermelho',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          subtitle: Text(
                            'Lorem Ipsum',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Text(
                          'Lorem Ipsum',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.7)),
                        ),
                      ),
                    ],
                  ),
                  color: Colors.red[500],
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
                            Icons.face_rounded,
                            size: 50,
                          ),
                          title: const Text(
                            'Roxo',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          subtitle: Text(
                            'Lorem Ipsum',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Text(
                          'Lorem Ipsum',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.7)),
                        ),
                      ),
                    ],
                  ),
                  color: Colors.purple[500],
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
                            Icons.wb_sunny_rounded,
                            size: 50,
                          ),
                          title: const Text(
                            'Marrom',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          subtitle: Text(
                            'Lorem Ipsum',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Text(
                          'Lorem Ipsum.',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.7)),
                        ),
                      ),
                    ],
                  ),
                  color: Colors.brown[500],
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
