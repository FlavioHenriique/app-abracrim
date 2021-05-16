import 'dart:developer';

import 'package:app_abracrim/view/convenios.dart';
import 'package:app_abracrim/view/login.dart';
import 'package:app_abracrim/view/perfil.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  TelaInicial({Key key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  int _index = 0;
  PageController pageController;
  List<String> lista = [
    "https://www.jornalismo.ufv.br/cinecom/wp-content/uploads/2020/10/303476-blondes-naruto-shippuden-anime-anime-boys-sage-mode-uzumaki-naruto-scaled.jpg",
    "https://i.ytimg.com/vi/MKmuCNNwVz8/maxresdefault.jpg",
    "https://www.jornalismo.ufv.br/cinecom/wp-content/uploads/2020/10/303476-blondes-naruto-shippuden-anime-anime-boys-sage-mode-uzumaki-naruto-scaled.jpg",
  ];
  final campoBuscaController = TextEditingController();
  bool momentoAbracrim = false;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    print("buildando");
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            title: new Text('AppBar Demo'),
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.red[900]),
            actions: [
              IconButton(
                icon: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset('assets/logo.png')),
              ),
            ]),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 20.0,
                child: DrawerHeader(
                  child: Row(
                    children: [Text("Olá, Usuário")],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
              Row(children: [
                Image.asset(
                  'assets/logo.png',
                  width: 80,
                ),
                Text(""),
                Text("Olá Usuário",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
              ]),
              Divider(
                color: Colors.grey,
              ),
              Stack(children: <Widget>[
                Positioned.fill(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            height: 60,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                bottomRight: Radius.circular(40),
                              ),
                              color: Colors.red[900],
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                                style: BorderStyle.solid,
                              ),
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    child: Text("",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  GestureDetector(
                                    child: Text("> ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ])))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TelaPerfil()));
                        },
                        child: Container(
                          height: 60,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                icon: Icon(Icons.person, size: 30),
                                color: Colors.red[900],
                                highlightColor: Colors.red[900],
                              ),
                              Text(
                                "Perfil",
                                style: TextStyle(
                                    color: Colors.red[900],
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ]),
              Stack(children: <Widget>[
                Positioned.fill(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            height: 60,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                bottomRight: Radius.circular(40),
                              ),
                              color: Colors.red[900],
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                                style: BorderStyle.solid,
                              ),
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    child: Text("",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  GestureDetector(
                                    child: Text("> ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ])))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TelaPerfil()));
                        },
                        child: Container(
                          height: 60,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                icon: Icon(Icons.credit_card, size: 30),
                                color: Colors.red[900],
                                highlightColor: Colors.red[900],
                              ),
                              Text(
                                "Carteira Digital",
                                style: TextStyle(
                                    color: Colors.red[900],
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ]),
              Stack(children: <Widget>[
                Positioned.fill(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            height: 60,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                bottomRight: Radius.circular(40),
                              ),
                              color: Colors.red[900],
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                                style: BorderStyle.solid,
                              ),
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    child: Text("",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  GestureDetector(
                                    child: Text("> ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ])))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TelaPerfil()));
                        },
                        child: Container(
                          height: 60,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                icon: Icon(Icons.business_outlined, size: 30),
                                color: Colors.red[900],
                                highlightColor: Colors.red[900],
                              ),
                              Text(
                                "Institucional",
                                style: TextStyle(
                                    color: Colors.red[900],
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ]),
              Stack(children: <Widget>[
                Positioned.fill(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            height: 60,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                bottomRight: Radius.circular(40),
                              ),
                              color: Colors.red[900],
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                                style: BorderStyle.solid,
                              ),
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    child: Text("",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  GestureDetector(
                                    child: Text("> ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ])))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TelaPerfil()));
                        },
                        child: Container(
                          height: 60,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                icon: Icon(Icons.format_align_center_outlined,
                                    size: 30),
                                color: Colors.red[900],
                                highlightColor: Colors.red[900],
                              ),
                              Text(
                                "Enquetes",
                                style: TextStyle(
                                    color: Colors.red[900],
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ]),
              Divider(color: Colors.grey),
              Row(children: [
                Card(
                  child: Container(
                    //padding: EdgeInsets.all(20.0),
                    height: 90,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(""),
                        Icon(
                          Icons.notifications_active,
                          size: 35,
                          color: Colors.red[900],
                        ),
                        Text(
                          'Cadastro de',
                          style: TextStyle(
                              color: Colors.red[900],
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Ocorrência',
                          style: TextStyle(
                              color: Colors.red[900],
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red[900],
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.red[600],
                            Colors.red[900],
                          ],
                        )),

                    //padding: EdgeInsets.all(20.0),
                    height: 90,
                    width: 100,
                    child: Column(
                      children: <Widget>[
                        Text(""),
                        Icon(
                          Icons.file_copy,
                          size: 35,
                          color: Colors.white,
                        ),
                        Text('Publicar',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Text(
                          'artigo',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
              Divider(color: Colors.grey),
              Text(""),
              Text(""),
              Container(
                  alignment: Alignment.centerLeft,
                  width: 19,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // background
                      onPrimary: Colors.red[900], // foreground
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TelaLogin()),
                      );
                    },
                    icon: Icon(Icons.arrow_back, size: 18),
                    label: Text(
                      "Sair da conta",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
              Text(""),
              Divider(color: Colors.grey),
              Text(""),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.red[900],
                    size: 30,
                  ),
                  Text(
                    "@abracrimnacional",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      color: Colors.red[900],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Início',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.red[900],
          unselectedItemColor: Colors.red[900],
          type: BottomNavigationBarType.fixed,
          //onTap: {},
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            child: Text("Convênios para você.",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TelaConvenios()),
                              );
                            },
                            child: Text("Ver mais",
                                style: TextStyle(
                                    color: Colors.red[900],
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 40.0),
                          height: 100,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'assets/logo.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ))),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'assets/logo.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ))),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'assets/logo.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ))),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'assets/logo.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ))),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        'assets/logo.png',
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ),
                            ],
                          )),
                      Row(
                        children: [
                          Text("Destaques",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ))
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 20.0),
                          height: 100,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.5,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'assets/logo.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ))),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.5,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'assets/logo.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ))),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.5,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'assets/logo.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ))),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.5,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'assets/logo.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ))),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.5,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'assets/logo.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ))),
                            ],
                          )),
                      Text(""),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 20.0),
                          height: 25,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              momentoAbracrim
                                  ? GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          momentoAbracrim = true;
                                          print(momentoAbracrim);
                                        });
                                      },
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 5.0),
                                            width: 140.0,
                                            color: Colors.blue,
                                            child: Text(
                                              "Notícias",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                          )))
                                  : GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          momentoAbracrim = false;
                                          print(momentoAbracrim);
                                        });
                                      },
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 5.0),
                                            width: 140.0,
                                            color: Colors.red,
                                            child: Text(
                                              "Momento Abracrim",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                          ))),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    width: 70.0,
                                    color: Colors.purple,
                                    child: Text(
                                      "Eventos",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  )),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    width: 70.0,
                                    color: Colors.green,
                                    child: Text(
                                      "Artigos",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  )),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    width: 70.0,
                                    color: Colors.yellow,
                                    child: Text(
                                      "Notas",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  )),
                            ],
                          )),
                      Text(""),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Notícias",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width / 1.5,
                              //height: 10,
                              alignment: Alignment.topLeft,
                              child: TextFormField(
                                controller: campoBuscaController,
                                cursorColor: Theme.of(context).cursorColor,
                                style: TextStyle(fontSize: 13),
                                decoration: InputDecoration(
                                  hintText: 'Buscar em Notícias',
                                  icon: Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  ),
                                  contentPadding: EdgeInsets.all(20.0),
                                ),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 1000,
                        child: ListView(
                            children: lista
                                .map((element) =>
                                    /*Card(
                                        child: Column(
                                      children: <Widget>[
                                        Image.network(element),
                                      ],
                                    )))*/
                                    Card(
                                      child: InkWell(
                                        child: Column(children: [
                                          Image.network(element),
                                          Text(""),
                                          Text(
                                            "Brasília - Deputados aprovam aumento de pena para estelionato",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(""),
                                          Text(
                                              "O presidente do superior tribunal de justiça(STJ) Ministro..."),
                                          Text(""),
                                          Stack(children: <Widget>[
                                            Positioned.fill(
                                                child: Align(
                                                    alignment: Alignment
                                                        .bottomCenter,
                                                    child: Container(
                                                        height: 35,
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.9,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    30),
                                                            topLeft:
                                                                Radius.circular(
                                                                    30),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    30),
                                                          ),
                                                          color: Colors
                                                              .yellow[800],
                                                          border: Border.all(
                                                            width: 1,
                                                            color: Colors.grey,
                                                            style: BorderStyle
                                                                .none,
                                                          ),
                                                        ),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              GestureDetector(
                                                                child: Text("",
                                                                    style:
                                                                        TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    )),
                                                              ),
                                                              GestureDetector(
                                                                child: Text(
                                                                    "Ler mais ->   ",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            12.0,
                                                                        fontWeight:
                                                                            FontWeight.bold)),
                                                              ),
                                                            ])))),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: 35,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.7,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    border: Border.all(
                                                      width: 1,
                                                      color: Colors.grey,
                                                      style: BorderStyle.none,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      IconButton(
                                                        icon: Icon(
                                                            Icons
                                                                .calendar_today_rounded,
                                                            size: 15),
                                                        color: Colors.red[900],
                                                        highlightColor:
                                                            Colors.red[900],
                                                      ),
                                                      Text(
                                                        "07 de Janeiro de 2021",
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color: Colors.grey),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ]),
                                        ]),
                                      ),
                                    ))
                                .toList()),
                      )
                    ]))));
  }
}
