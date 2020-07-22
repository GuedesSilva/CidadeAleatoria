import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Cidade aleatória'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List locais = [
    "Cianorte",
    "São Lourenço",
    "Vidigal",
    "Maringá",
    "Terra Boa",
    "Cruzeiro do Oeste",
    "Umuarama",
    "Japurá",
    "Campo Mourão",
    "Astorga",
    "Cascavel",
    "Ribeirão Preto"
  ];

  String randomTexto = "";

  List<MaterialColor> cores = [
    Colors.purple,
    Colors.red,
    Colors.teal,
    Colors.white,
    Colors.yellow,
    Colors.transparent,
    Colors.blue,
    Colors.orange,
    Colors.green,
    Colors.pink,
    Colors.red
  ];

  MaterialColor randomCores = Colors.blue;

  void atualizarTela() {
    setState(() {
      randomTexto = locais[new Random().nextInt(locais.length)];
      randomCores = cores[new Random().nextInt(cores.length)];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            FlatButton(
              onPressed: atualizarTela,
              color: randomCores,
              child: Text("Clique Aqui"),
            ),

            new Text(
              '$randomTexto',
              style: Theme.of(context).textTheme.display1,
            ),

          ],
        ),
      ),
    );
  }
}
