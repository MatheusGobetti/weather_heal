import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:weather_heal/aqi_tabela.dart';
import 'package:weather_heal/criar_conta.dart';
import 'package:weather_heal/crud_regioes.dart';
import 'package:weather_heal/cuidados.dart';
import 'package:weather_heal/login_page.dart';
import 'package:weather_heal/regioes.dart';
import 'package:weather_heal/tela_home.dart';
import 'package:weather_heal/sobre.dart';

import 'tela_home.dart';

Future<void> main() async {
  // Inicializar os plugins
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegação',
      initialRoute: '/login_page',
      routes: {
        '/login_page': (context) => LoginPage(),
        '/criar_conta': (context) => CriarContaPage(),
        '/tela_home': (context) => TelaHome(),
        '/cuidados': (context) => TelaCuidados(),
        '/regioes': (context) => TelaRegioes(),
        '/aqi_tabela': (context) => TelaTabela(),
        '/sobre': (context) => TelaSobre(),
        '/crud_regioes': (context) => TelaCrudRegioes(),
      },
    ),
  );
}
