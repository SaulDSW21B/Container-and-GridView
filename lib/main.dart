import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class PaginaUno extends StatelessWidget {
  List<String> listaDeRutasDeImagenes = [
    'assets/zapatos.png',
    'assets/zapatos3.png',
    'assets/zapatos2.png',
    'assets/zapatos7.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView 1'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: listaDeRutasDeImagenes.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.blueAccent,
            child: Center(
              child: Image.asset(
                listaDeRutasDeImagenes[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}

class PaginaDos extends StatelessWidget {
  List<String> listaDeRutasDeImagenes = [
    'assets/zapatos.png',
    'assets/zapatos3.png',
    'assets/zapatos2.png',
    'assets/zapatos7.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView 2'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: listaDeRutasDeImagenes.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.blueAccent,
            child: Center(
              child: Image.asset(
                listaDeRutasDeImagenes[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
class PaginaTres extends StatelessWidget {
  List<String> listaDeRutasDeImagenes = [
    'assets/zapatos.png',
    'assets/zapatos3.png',
    'assets/zapatos2.png',
    'assets/zapatos7.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView 3'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: listaDeRutasDeImagenes.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.blueAccent,
            child: Center(
              child: Image.asset(
                listaDeRutasDeImagenes[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}

class PaginaCuatro extends StatelessWidget {
  List<String> listaDeRutasDeImagenes = [
    'assets/zapatos.png',
    'assets/zapatos3.png',
    'assets/zapatos2.png',
    'assets/zapatos7.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView 4'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: listaDeRutasDeImagenes.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.blueAccent,
            child: Center(
              child: Image.asset(
                listaDeRutasDeImagenes[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejemplo con Container y GridView'),
        ),
        body: PageView(
          children: [
            PaginaUno(),
            PaginaDos(),
            PaginaTres(),
            PaginaCuatro(),
          ],
        ),
      ),
    );
  }
}
