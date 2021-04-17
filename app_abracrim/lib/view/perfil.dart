import 'package:flutter/material.dart';
import 'package:circular_check_box/circular_check_box.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

import 'inicial.dart';

class TelaPerfil extends StatefulWidget {
  TelaPerfil({Key key}) : super(key: key);

  @override
  _TelaPerfilState createState() => _TelaPerfilState();
}

class _TelaPerfilState extends State<TelaPerfil> {
  final campoUsuarioController = TextEditingController();
  final campoSenhaController = TextEditingController();
  bool manterConectado = false;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    campoUsuarioController.dispose();
    campoSenhaController.dispose();
    super.dispose();
  }

  void _onRememberMeChanged(bool newValue) => setState(() {
        manterConectado = newValue;

        if (manterConectado) {
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // TODO: Forget the user
        }
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back),
                            color: Colors.black,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: new AssetImage('assets/logo.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Text("Usuário",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                      Text(""),
                      Text(""),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            child: Text("Informações Gerais:",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                )),
                          ),
                        ],
                      ),
                      Text(""),
                      Text(""),
                      Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            ),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.message, size: 30),
                                color: Colors.red[900],
                                highlightColor: Colors.red[900],
                              ),
                              Table(
                                  defaultColumnWidth: FixedColumnWidth(200.0),
                                  children: [
                                    TableRow(children: [
                                      Text('E-mail'),
                                    ]),
                                    TableRow(children: [
                                      Text(
                                        'usuario@gmail.com',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ]),
                                  ])
                            ],
                          )),
                      Text(""),
                      Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            ),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.lock, size: 30),
                                color: Colors.red[900],
                                highlightColor: Colors.red[900],
                              ),
                              Table(
                                  defaultColumnWidth: FixedColumnWidth(200.0),
                                  children: [
                                    TableRow(children: [
                                      Text('Senha'),
                                    ]),
                                    TableRow(children: [
                                      Text(
                                        '*******',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ]),
                                  ])
                            ],
                          )),
                      Text(""),
                      Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            ),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.phone, size: 30),
                                color: Colors.red[900],
                                highlightColor: Colors.red[900],
                              ),
                              Table(
                                  defaultColumnWidth: FixedColumnWidth(200.0),
                                  children: [
                                    TableRow(children: [
                                      Text('Telefone'),
                                    ]),
                                    TableRow(children: [
                                      Text(
                                        "(83) 9XXXX-XXXX",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ]),
                                  ])
                            ],
                          )),
                      Text(""),
                      Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            ),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                "      Validade até: ",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text("25/08/2021")
                            ],
                          )),
                      Text(""),
                      Text(""),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.menu_book_sharp, size: 30),
                            color: Colors.red[900],
                            highlightColor: Colors.red[900],
                          ),
                          Text(
                            "Bibliografia:",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Row(children: [
                        Text(
                          "Sobre mim:",
                        ),
                        Divider(color: Colors.black)
                      ]),
                      TextField(
                        maxLines: 8,
                        decoration: InputDecoration.collapsed(
                            hintText: "Escreva sua bibliografia aqui:"),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.place, size: 30),
                            color: Colors.red[900],
                            highlightColor: Colors.red[900],
                          ),
                          Text(
                            "Localização:",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Text(""),
                      Table(
                          defaultColumnWidth: FixedColumnWidth(
                              MediaQuery.of(context).size.width / 2),
                          children: [
                            TableRow(children: [
                              Text(
                                'CEP:',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                "Endereço:",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ]),
                            TableRow(children: [
                              Text(
                                '58805-200',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                "Av. Feliciano Dourado",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ]),
                          ]),
                      Text(""),
                      Table(
                        defaultColumnWidth: FixedColumnWidth(
                            MediaQuery.of(context).size.width / 2),
                        children: [
                          TableRow(children: [
                            Text(
                              "Complemento",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "Nº",
                              style: TextStyle(color: Colors.grey),
                            )
                          ]),
                          TableRow(children: [
                            Text(
                              "Próximo a Unimed",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "1021",
                              style: TextStyle(color: Colors.grey),
                            )
                          ]),
                        ],
                      ),
                      Text(""),
                      Table(
                        defaultColumnWidth: FixedColumnWidth(
                            MediaQuery.of(context).size.width / 2),
                        children: [
                          TableRow(children: [
                            Text(
                              "Bairro",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text("")
                          ]),
                          TableRow(children: [
                            Text(
                              "Torre",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text("")
                          ]),
                        ],
                      ),
                      Text(""),
                      Table(
                        defaultColumnWidth: FixedColumnWidth(
                            MediaQuery.of(context).size.width / 2),
                        children: [
                          TableRow(children: [
                            Text(
                              "Cidade",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "Estado",
                              style: TextStyle(color: Colors.grey),
                            )
                          ]),
                          TableRow(children: [
                            Text(
                              "João Pessoa",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "PB",
                              style: TextStyle(color: Colors.grey),
                            )
                          ]),
                        ],
                      ),
                    ]))));
  }
}
