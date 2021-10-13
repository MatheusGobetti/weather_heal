import 'package:flutter/material.dart';
import 'package:weather_heal/drawer_widget.dart';

class TelaHome extends StatelessWidget {
  const TelaHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Menu"),
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
                        text: 'Ribeirão Preto, ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: 'Brasil',
                        style: TextStyle(color: Colors.black, fontSize: 24)),
                  ]),
                ),
              ),
              Container(
                height: 200,
                child: Card(
                  margin: EdgeInsets.fromLTRB(40, 0, 40, 20),
                  child: Column(
                    children: [
                      ListTile(
                          leading: Icon(
                            Icons.fmd_good_sharp,
                            size: 50,
                          ),
                          title: const Text(
                            '17 - Bom',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          subtitle: Text(
                            'AQI Index',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                        child: Text(
                          'Hoje o ar está em uma qualidade ótima e você pode aproveitar para sair de casa sem preocupações.',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.7)),
                        ),
                      ),
                    ],
                  ),
                  color: Colors.lightGreenAccent[400],
                ),
              ),
              Container(
                height: 700,
                child: Card(
                  margin: EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: Column(
                    children: [
                      ListTile(
                          leading: Icon(
                            Icons.cloud_queue_outlined,
                            size: 50,
                          ),
                          title: const Text(
                            'Componentes do Ar',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          subtitle: Text(
                            'AQI Index',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                            ),
                          )),
                      Container(
                        child: ListTile(
                          title: Text('CO: 383.85'),
                          subtitle: Text('Monóxido de Carbono'),
                        ),
                      ),
                      Container(
                        child: ListTile(
                          title: Text('NO: 0.12'),
                          subtitle: Text('Monóxido de Nitrogênio'),
                        ),
                      ),
                      Container(
                        child: ListTile(
                          title: Text('NO2: 1.17'),
                          subtitle: Text('Dióxido de Nitrogênio'),
                        ),
                      ),
                      Container(
                        child: ListTile(
                          title: Text('O3: 77.25'),
                          subtitle: Text('Ozônio'),
                        ),
                      ),
                      Container(
                        child: ListTile(
                          title: Text('SO2: 0.38'),
                          subtitle: Text('Dióxido de Enxofre'),
                        ),
                      ),
                      Container(
                        child: ListTile(
                          title: Text('PM2.5: 5.77'),
                          subtitle: Text('Partícula de Material Fino'),
                        ),
                      ),
                      Container(
                        child: ListTile(
                          title: Text('PM10: 6.25'),
                          subtitle: Text('Partícula de material pesado'),
                        ),
                      ),
                      Container(
                        child: ListTile(
                          title: Text('NH3: 1.08'),
                          subtitle: Text('Amônia'),
                        ),
                      ),
                    ],
                  ),
                  color: Colors.lightBlue[100],
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
