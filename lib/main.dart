import 'package:flutter/material.dart';

void main() {
  runApp(ImssApp());
} // funcion principal

class ImssApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ImssMuela',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        home: PaginaInicial());
  } // widget
} // clase ImssApp widget sin estado

class PaginaInicial extends StatefulWidget {
  PaginaInicial({Key? key}) : super(key: key);
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
} //widget con estado

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/compu.jpg",
    "assets/images/compu2.jpg",
    "assets/images/compu3.jpg",
    "assets/images/compu4.jpg",
    "assets/images/compu5.jpg",
    "assets/images/compu6.jpg",
    "assets/images/compu7.jpg",
    "assets/images/compu8.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Galeria de computadoras"),
        ),
        body: GridView.builder(
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(images[index], fit: BoxFit.cover);
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
