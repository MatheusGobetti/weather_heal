import 'package:flutter/material.dart';
import 'package:weather_heal/aqi_tabela.dart';
import 'package:weather_heal/cuidados.dart';
import 'package:weather_heal/login_page.dart';
import 'package:weather_heal/tela_home.dart';
import 'package:weather_heal/sobre.dart';

import 'tela_home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegação',
      // TEMAS
      home: TelaTabela(),
    ),
  );
}
