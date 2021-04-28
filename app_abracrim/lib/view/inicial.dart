import 'dart:developer';

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

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
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
                            width: MediaQuery.of(context).size.width * 0.3,
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
                          width: MediaQuery.of(context).size.width * 0.5,
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
                              Text("Perfil"),
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
                            width: MediaQuery.of(context).size.width * 0.3,
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
                          width: MediaQuery.of(context).size.width * 0.5,
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
                              Text("Carteira Digital"),
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
                            width: MediaQuery.of(context).size.width * 0.3,
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
                          width: MediaQuery.of(context).size.width * 0.5,
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
                              Text("Institucional"),
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
                            width: MediaQuery.of(context).size.width * 0.3,
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
                          width: MediaQuery.of(context).size.width * 0.5,
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
                              Text("Enquetes"),
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
                            child: Text("Ver mais",
                                style: TextStyle(
                                    color: Colors.red[900],
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      CarouselSlider(
                        options: CarouselOptions(
                            height: 80.0,
                            enlargeCenterPage: true,
                            enlargeStrategy: CenterPageEnlargeStrategy.height),
                        items: [1, 2, 3, 4, 5].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width / 3,
                                margin: EdgeInsets.symmetric(horizontal: 0.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    'assets/logo.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                      Row(
                        children: [
                          Text("Destaques",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ))
                        ],
                      ),
                      CarouselSlider(
                        options: CarouselOptions(height: 100.0),
                        items: [1, 2, 3, 4, 5].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    'assets/logo.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                      Text(""),

                      /*
                      CarouselSlider(
                        options: CarouselOptions(height: 30.0),
                        items: [1, 2, 3, 4, 5].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width / 3,
                                margin: EdgeInsets.symmetric(horizontal: 1.0),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Text("Eventos",
                                      style: TextStyle(color: Colors.white)),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),*/

                      Text(""),
                      Text(""),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Notícias"),
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
                                .map((element) => Card(
                                        child: Column(
                                      children: <Widget>[
                                        Image.network(element),
                                      ],
                                    )))
                                .toList()),
                      )
                    ]))));
  }
}
