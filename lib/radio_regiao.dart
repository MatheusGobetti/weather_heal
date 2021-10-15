import 'package:flutter/material.dart';

enum Regiao { atual, outro }

class RadioRegiao extends StatefulWidget {
  const RadioRegiao({Key? key}) : super(key: key);

  @override
  State<RadioRegiao> createState() => _RadioRegiaoState();
}

class _RadioRegiaoState extends State<RadioRegiao> {
  Regiao? _regiao = Regiao.atual;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: 'Ribeirão Preto, ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: 'Brasil',
                  style: TextStyle(color: Colors.black, fontSize: 20)),
            ]),
          ),
          leading: Radio<Regiao>(
            value: Regiao.atual,
            groupValue: _regiao,
            onChanged: (Regiao? value) {
              setState(() {
                _regiao = value;
              });
            },
          ),
        ),
        ListTile(
          title: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: 'Outro',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  )),
            ]),
          ),
          leading: Radio<Regiao>(
            value: Regiao.outro,
            groupValue: _regiao,
            onChanged: (Regiao? value) {
              setState(() {
                _regiao = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
