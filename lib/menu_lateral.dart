import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Menu"),
        ),
        drawer: Drawer(
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
                onTap: () {},
              ),
              ListTile(
                trailing: Icon(Icons.masks_outlined),
                leading: Icon(Icons.wb_sunny_outlined),
                title: Text("Cuidados"),
                onTap: () {},
              ),
              ListTile(
                trailing: Icon(Icons.speed_outlined),
                leading: Icon(Icons.wb_sunny_outlined),
                title: Text("AQI"),
                onTap: () {},
              ),
              ListTile(
                trailing: Icon(Icons.help_outline_rounded),
                leading: Icon(Icons.wb_sunny_outlined),
                title: Text("Sobre"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
