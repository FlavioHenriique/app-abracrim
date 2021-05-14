import 'package:flutter/material.dart';
import 'package:circular_check_box/circular_check_box.dart';

class TelaConvenios extends StatefulWidget {
  TelaConvenios({Key key}) : super(key: key);

  @override
  _TelaConveniosState createState() => _TelaConveniosState();
}

class _TelaConveniosState extends State<TelaConvenios> {
  final campoBuscaController = TextEditingController();

  alerta() {
    return AlertDialog(
        content: SingleChildScrollView(
      child: ListBody(
        children: <Widget>[
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                    style: BorderStyle.none,
                  ),
                  image: DecorationImage(
                      image: new AssetImage('assets/logo.png'),
                      fit: BoxFit.fill),
                ),
              ),
              Table(defaultColumnWidth: FixedColumnWidth(120.0), children: [
                TableRow(children: [
                  Text("El plato fuerte",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ]),
                TableRow(children: [
                  Text("Cozinha italiana",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.grey)),
                ]),
                TableRow(children: [
                  Text("Convênio Nacional",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.grey)),
                ]),
              ]),
            ],
          ),
          Text(""),
          Text('Detalhes',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          Text(
              "O Convênio do El Plato Fuerte é valido em todo território nacional para associados da ABRACRIM. Aproveite os 10% de desconto em nossos pratos.",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.grey)),
          Stack(children: <Widget>[
            Container(
              child: Container(
                  height: 60,
                  width: 260,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    color: Colors.red[900],
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: Text("",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        GestureDetector(
                          child: Text("Usar  ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ])),
            ),
            InkWell(
                child: Container(
              height: 60,
              width: 190,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20)),
                border: Border.all(
                  width: 0.5,
                  color: Colors.grey,
                  style: BorderStyle.solid,
                ),
              ),
              child: Row(
                children: [
                  Table(defaultColumnWidth: FixedColumnWidth(150.0), children: [
                    TableRow(children: [
                      Text("   Desconto de associado",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          )),
                    ]),
                    TableRow(children: [
                      Text("10% em todos os pratos",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey)),
                    ]),
                  ]),
                ],
              ),
            )),
          ]),
        ],
      ),
    ));
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
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(""),
                      Text(""),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            child: Text("Convênios",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red[900],
                                  fontSize: 20,
                                )),
                          ),
                        ],
                      ),
                      Text(""),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                          IconButton(
                            icon: Icon(Icons.share, size: 30),
                            color: Colors.red[900],
                            highlightColor: Colors.red[900],
                          ),
                        ],
                      ),
                      Text(""),
                      GridView.count(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        primary: false,
                        crossAxisSpacing: 10.0,
                        crossAxisCount: 2,
                        children: List.generate(20, (index) {
                          /*return Container(
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
                          );*/
                          return Container(
                              child: Card(
                            child: InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return alerta();
                                  },
                                );
                              },
                              child: Column(children: [
                                Image.asset(
                                  'assets/logo.png',
                                  fit: BoxFit.cover,
                                ),
                                Text(""),
                                Text(""),
                                Text("10% de desconto ->",
                                    style: TextStyle(
                                        color: Colors.red[900],
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold))
                              ]),
                            ),
                          ));
                        }),
                      )
                    ]))));
  }
}
