import 'package:flutter/material.dart';
import 'package:weather_heal/drawer_widget.dart';
import 'package:weather_heal/radio_regiao.dart';

class TelaRegioes extends StatelessWidget {
  const TelaRegioes({Key? key}) : super(key: key);

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
        body: Center(
          child: RadioRegiao(),
        ),
        drawer: drawerWidget(context),
      ),
    );
  }
}
