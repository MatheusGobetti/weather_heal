import 'package:flutter/material.dart';
import 'package:weather_heal/login_page.dart';
import 'package:weather_heal/menu_lateral.dart';
import 'package:weather_heal/sobre.dart';

import 'menu_lateral.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegação',
      // TEMAS
      home: TelaSobre(),
    ),
  );
}
