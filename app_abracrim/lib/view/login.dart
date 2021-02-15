import 'package:flutter/material.dart';

class TelaLogin extends StatefulWidget {
  TelaLogin({Key key}) : super(key: key);

  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(""),
          Text(""),
          Text(""),
          new Image.asset('assets/logo.png'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("column 1"),
              Text("column 2"),
            ],
          )
        ],
      ),
    ));
  }
}
