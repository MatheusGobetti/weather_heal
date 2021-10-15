import 'package:flutter/material.dart';
import 'package:weather_heal/aqi_tabela.dart';
import 'package:weather_heal/cuidados.dart';
import 'package:weather_heal/login_page.dart';
import 'package:weather_heal/regioes.dart';
import 'package:weather_heal/tela_home.dart';
import 'package:weather_heal/sobre.dart';

import 'tela_home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegação',
      initialRoute: '/login_page',
      routes: {
        '/login_page': (context) => LoginPage(),
        '/tela_home': (context) => TelaHome(),
        '/cuidados': (context) => TelaCuidados(),
        '/regioes': (context) => TelaRegioes(),
        '/aqi_tabela': (context) => TelaTabela(),
        '/sobre': (context) => TelaSobre(),
      },
    ),
  );
}
