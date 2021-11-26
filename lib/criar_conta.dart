import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CriarContaPage extends StatefulWidget {
  const CriarContaPage({Key? key}) : super(key: key);

  @override
  _CriarContaPageState createState() => _CriarContaPageState();
}

class _CriarContaPageState extends State<CriarContaPage> {
  var txtNome = TextEditingController();
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  var txtCpf = TextEditingController();
  var txtTelefone = TextEditingController();

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
                            controller:
                            txtNome;
                          },
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              labelStyle:
                                  TextStyle(fontSize: 20, color: Colors.orange),
                              labelText: 'Nome Completo',
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
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(11),
                          ],
                          onChanged: (text) {
                            controller:
                            txtCpf;
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelStyle:
                                  TextStyle(fontSize: 20, color: Colors.orange),
                              labelText: 'CPF',
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
                            controller:
                            txtTelefone;
                          },
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              labelStyle:
                                  TextStyle(fontSize: 20, color: Colors.orange),
                              labelText: 'Telefone',
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
                            controller:
                            txtEmail;
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
                            controller:
                            txtSenha;
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
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              fixedSize: Size(180, 60),
                              primary: Colors.orange,
                              side: BorderSide(color: Colors.orange)),
                          onPressed: () {
                            Navigator.pushNamed(context, '/tela_home');
                          },
                          child: Text(
                            'Criar Conta',
                            style: TextStyle(fontSize: 20),
                          ),
                        )
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
}
