import 'package:flutter/material.dart';

Widget drawerWidget(context) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('Matheus Gobetti'),
          accountEmail: Text('matheusgobetti12@gmail.com'),
          currentAccountPicture: Image.asset(
            'lib/imagens/user.png',
            width: 50,
            height: 50,
          ),
          decoration: BoxDecoration(
            color: Colors.orange,
          ),
        ),
        ListTile(
          trailing: Icon(Icons.location_city_rounded),
          leading: Icon(Icons.wb_sunny_outlined),
          title: Text("Minha Cidade"),
          onTap: () {
            Navigator.pushNamed(context, '/tela_home');
          },
        ),
        ListTile(
          trailing: Icon(Icons.masks_outlined),
          leading: Icon(Icons.wb_sunny_outlined),
          title: Text("Cuidados"),
          onTap: () {
            Navigator.pushNamed(context, '/cuidados');
          },
        ),
        ListTile(
          trailing: Icon(Icons.speed_outlined),
          leading: Icon(Icons.wb_sunny_outlined),
          title: Text("AQI"),
          onTap: () {
            Navigator.pushNamed(context, '/aqi_tabela');
          },
        ),
        ListTile(
          trailing: Icon(Icons.help_outline_rounded),
          leading: Icon(Icons.wb_sunny_outlined),
          title: Text("Sobre"),
          onTap: () {
            Navigator.pushNamed(context, '/sobre');
          },
        ),
      ],
    ),
  );
}
