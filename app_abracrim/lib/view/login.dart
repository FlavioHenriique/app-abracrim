import 'package:flutter/material.dart';
import 'package:circular_check_box/circular_check_box.dart';

import 'inicial.dart';

class TelaLogin extends StatefulWidget {
  TelaLogin({Key key}) : super(key: key);

  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
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

  void login() {
    if (campoUsuarioController.text == "teste" &&
        campoSenhaController.text == "teste") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaInicial()),
      );
    } else {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text("Usuário não encontrado"),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
            padding: EdgeInsets.all(50.0),
            child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(""),
                  FittedBox(
                    child: Image.asset('assets/logo.png'),
                    fit: BoxFit.fill,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          child: Text("Associar-se",
                              style: TextStyle(color: Colors.grey)),
                          onTap: () {}),
                      Text(" | "),
                      GestureDetector(
                          child: Text("Já sou associado",
                              style: TextStyle(
                                  color: Colors.red[900],
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold)),
                          onTap: () {}),
                    ],
                  ),
                  TextFormField(
                    controller: campoUsuarioController,
                    cursorColor: Theme.of(context).cursorColor,
                    decoration: InputDecoration(
                      hintText: 'Usuário',
                      icon: Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      contentPadding: EdgeInsets.all(20.0),
                    ),
                  ),
                  TextFormField(
                    controller: campoSenhaController,
                    cursorColor: Theme.of(context).cursorColor,
                    decoration: InputDecoration(
                      hintText: 'Senha',
                      icon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      contentPadding: EdgeInsets.all(20.0),
                    ),
                  ),
                  Text(""),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(children: [
                        CircularCheckBox(
                            value: manterConectado,
                            onChanged: _onRememberMeChanged,
                            activeColor: Colors.red[900],
                            checkColor: Colors.white),
                        Text("Manter conectado"),
                      ])),
                  Text(""),
                  RaisedButton(
                      child: Text("Acessar"),
                      color: Colors.white,
                      onPressed: login,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0))),
                  Text("Esqueceu a senha?",
                      style: TextStyle(
                          color: Colors.red[900], fontWeight: FontWeight.bold)),
                ])));
  }
}
