import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class PaginaUno extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView 1'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.blueAccent,
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
            
          ],
        ),
      ),
    );
  }
}
