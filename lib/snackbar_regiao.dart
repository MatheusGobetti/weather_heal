import 'package:flutter/material.dart';
import 'package:weather_heal/radio_regiao.dart';

class SnackBarRegiao extends StatelessWidget {
  const SnackBarRegiao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          iconSize: 30,
          padding: EdgeInsets.fromLTRB(0, 5, 0, 20),
          icon: const Icon(Icons.fmd_good_outlined),
          tooltip: 'Alterar Região',
          onPressed: () {
            final snackBar = SnackBar(
              content: RichText(
                text: TextSpan(
                  text: 'Você está em: ',
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Ribeirão Preto',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              action: SnackBarAction(
                label: 'Sair',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        ),
      ],
    );
  }
}
