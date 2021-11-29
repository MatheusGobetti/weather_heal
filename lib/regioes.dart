import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:weather_heal/drawer_widget.dart';

final List<String> data = <String>['Ribeirao Preto'];
String? regiao = data[0];

class TelaRegioes extends StatefulWidget {
  const TelaRegioes({Key? key}) : super(key: key);

  @override
  State<TelaRegioes> createState() => _TelaRegioesState();
}

class _TelaRegioesState extends State<TelaRegioes> {
  late CollectionReference regioes;

  @override
  void initState() {
    super.initState();
    regioes = FirebaseFirestore.instance.collection('regioes');
  }

  // Especificar a aparência de cada elemento da Lista
  exibirItemColecao(item) {
    String nome = item.data()['nome'];
    return ListTile(
      title: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: nome,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              )),
        ]),
      ),
      leading: Radio(
          value: nome,
          groupValue: regiao,
          onChanged: (String? value) {
            setState(() {
              regiao = value;
            });
          }),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          regioes.doc(item.id).delete();
        },
      ),
      onTap: () {
        Navigator.pushNamed(context, '/crud_regioes', arguments: item.id);
      },
    );
  }

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
          title: Text('Regiões'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              StreamBuilder<QuerySnapshot>(

                  // Fonte de dados (coleção)
                  stream: regioes.snapshots(),

                  // Exibir os dados retornados
                  builder: (context, snapshot) {
                    // Verificar o estado da conexão
                    switch (snapshot.connectionState) {
                      case ConnectionState.none:
                        return const Center(
                          child: Text('Não foi possível conectar ao Firestore'),
                        );
                      case ConnectionState.waiting:
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      // Se os dados foram recebidos com sucesso
                      default:
                        final dados = snapshot.requireData;
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: dados.size,
                          itemBuilder: (context, index) {
                            return exibirItemColecao(dados.docs[index]);
                          },
                        );
                    }
                  }),
            ],
          ),
        ),
        drawer: drawerWidget(context),
        floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.white,
          backgroundColor: Colors.orange,
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context, '/crud_regioes');
          },
        ),
      ),
    );
  }
}
