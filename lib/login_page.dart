import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/imagens/sun.png',
                  width: 200,
                  height: 200,
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          onChanged: (text) {
                            email = text;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelStyle:
                                  TextStyle(fontSize: 20, color: Colors.orange),
                              labelText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Colors.orange, width: 3),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.orange, width: 3))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          onChanged: (text) {
                            password = text;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              labelStyle:
                                  TextStyle(fontSize: 20, color: Colors.orange),
                              labelText: 'Senha',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Colors.orange, width: 3),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.orange, width: 3))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  fixedSize: Size(180, 60),
                                  primary: Colors.orange,
                                  side: BorderSide(color: Colors.orange)),
                              onPressed: () {
                                if (email == 'admin' && password == '123') {
                                  Navigator.pushNamed(context, '/tela_home');
                                } else {
                                  print('Login Invalido');
                                }
                              },
                              child: Text(
                                'Entrar',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  fixedSize: Size(180, 60),
                                  primary: Colors.orange,
                                  side: BorderSide(color: Colors.orange)),
                              onPressed: () {
                                Navigator.pushNamed(context, '/criar_conta');
                              },
                              child: Text(
                                'Criar Conta',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Login com Firebase Auth
  void login(email, senha) {}
}
