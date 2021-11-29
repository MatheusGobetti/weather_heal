import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:weather_heal/drawer_widget.dart';
import 'package:weather_heal/regioes.dart';

class TelaCrudRegioes extends StatefulWidget {
  const TelaCrudRegioes({Key? key}) : super(key: key);

  @override
  State<TelaCrudRegioes> createState() => _TelaCrudRegioesState();
}

class _TelaCrudRegioesState extends State<TelaCrudRegioes> {
  var txtNome = TextEditingController();

  // Retornar um único documento a partir do ID
  getDocumentById(id) async {
    await FirebaseFirestore.instance
        .collection('regioes')
        .doc(id)
        .get()
        .then((doc) {
      txtNome.text = doc.get('nome');
    });
  }

  @override
  Widget build(BuildContext context) {
    // Recuperar o ID do
    var id = ModalRoute.of(context)?.settings.arguments;
    if (id != null) {
      if (txtNome.text.isEmpty) {
        getDocumentById(id);
      }
    }

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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(40, 40, 40, 20),
              width: 380,
              child: TextField(
                controller: txtNome,
                decoration: InputDecoration(
                    labelStyle: TextStyle(fontSize: 20, color: Colors.orange),
                    labelText: 'Digite o nome da região',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.orange, width: 3),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.orange, width: 3))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    color: Colors.orange,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.keyboard_return)),
                IconButton(
                  color: Colors.orange,
                  onPressed: () {
                    if (id == null) {
                      // Adicionar uma regiao
                      FirebaseFirestore.instance.collection('regioes').add({
                        'nome': txtNome.text,
                      }).then((value) => {Navigator.pop(context)});
                    } else {
                      // Atualizar uma regiao existente
                      FirebaseFirestore.instance
                          .collection('regioes')
                          .doc(id.toString())
                          .set({'nome': txtNome.text}).then(
                              (value) => {Navigator.pop(context)});
                    }
                  },
                  icon: Icon(Icons.save),
                ),
              ],
            ),
          ],
        ),
        drawer: drawerWidget(context),
      ),
    );
  }
}
