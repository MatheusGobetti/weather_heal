import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:weather_heal/drawer_widget.dart';

class TelaCuidados extends StatelessWidget {
  const TelaCuidados({Key? key}) : super(key: key);

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
                        text: 'Lista de cuidados básicos',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                  ]),
                ),
              ),
              Container(
                height: 330,
                child: Card(
                  margin: EdgeInsets.fromLTRB(40, 0, 40, 20),
                  child: Column(
                    children: [
                      ListTile(
                          leading: Icon(
                            Icons.masks_rounded,
                            size: 50,
                          ),
                          title: const Text(
                            'Máscaras',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          subtitle: Text(
                            'Protegem o canal respiratório',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Text(
                          'A máscara com filtro pode ser uma solução muito barata para prevenir o desenvolvimento de insuficiência cardíaca, que é uma doença que está se tornando cada vez mais cara para ser tratada, uma vez que os pacientes são internados várias vezes, requerem terapias que permitem uma sobrevida de, no máximo, oito anos e soluções custosas, como transplantes ou dispositivos de assistência cardíaca mecânicos.',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.7)),
                        ),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            child: Text(
                              'SAIBA MAIS',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                  color: Colors.green[100],
                ),
              ),
              Container(
                height: 250,
                child: Card(
                  margin: EdgeInsets.fromLTRB(40, 0, 40, 20),
                  child: Column(
                    children: [
                      ListTile(
                          leading: Icon(
                            Icons.food_bank_rounded,
                            size: 50,
                          ),
                          title: const Text(
                            'Alimentação',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          subtitle: Text(
                            'Produtos e alimentação saudável',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Text(
                          'Procure por produtos com substâncias antioxidantes em suas fórmulas e regule sua alimentação para consumir aqueles que são ricos em vitamina E, C e A, como abacate, morango e cenoura, respectivamente.',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.7)),
                        ),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            child: Text(
                              'SAIBA MAIS',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                  color: Colors.red[100],
                ),
              ),
              Container(
                height: 240,
                child: Card(
                  margin: EdgeInsets.fromLTRB(40, 0, 40, 20),
                  child: Column(
                    children: [
                      ListTile(
                          leading: Icon(
                            Icons.face_rounded,
                            size: 50,
                          ),
                          title: const Text(
                            'Rosto',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          subtitle: Text(
                            'Lavagem regular',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Text(
                          'Um hábito simples para aderir é o de lavar o rosto assim que chegar da rua. A atitude contribui para eliminar as impurezas e evitar obstruções nos poros - que causam acne.',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.7)),
                        ),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            child: Text(
                              'SAIBA MAIS',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                  color: Colors.yellow[100],
                ),
              ),
              Container(
                height: 380,
                child: Card(
                  margin: EdgeInsets.fromLTRB(40, 0, 40, 20),
                  child: Column(
                    children: [
                      ListTile(
                          leading: Icon(
                            Icons.wb_sunny_rounded,
                            size: 50,
                          ),
                          title: const Text(
                            'Protetor Solar',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          subtitle: Text(
                            'Evita danos a longo prazo',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Text(
                          'Como bons habitantes de um país tropical, os brasileiros adoram passar horas ao sol à espera do bronze perfeito. Não que isso seja proibido (ao contrário, é importante para a saúde), mas o protetor solar é indispensável, mesmo para aqueles que já têm a pele morena tanto por conta da saúde quanto para driblar o envelhecimento. Além disso, o protetor solar deve ser aplicado todos os dias e não apenas na praia ou piscina. O uso deve ser estimulado desde criança para evitar os efeitos cumulativos na pele, que podem causar danos mais tarde, inclusive câncer.',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.7)),
                        ),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            child: Text(
                              'SAIBA MAIS',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                  color: Colors.orange[100],
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
