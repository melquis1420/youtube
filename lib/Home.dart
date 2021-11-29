// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:youtube/telas/Biblioteca.dart';
import 'package:youtube/telas/EmAlta.dart';
import 'package:youtube/telas/Inicio.dart';
import 'package:youtube/telas/Inscricao.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [
      Inicio(),
      EmAlta(),
      Inscricao(),
      Biblioteca(),
    ];
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey, opacity: 1),
        backgroundColor: Colors.white,
        title: Image.asset(
          "images/youtube.png",
          width: 98,
          height: 22,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
      body: telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,

        //change bottomNavigationBar
        onTap: (indice) {
          setState(() {
            _indiceAtual = indice;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            title: Text("Início"),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text("Em Alta"),
            icon: Icon(Icons.whatshot),
          ),
          BottomNavigationBarItem(
            title: Text("Inscrções"),
            icon: Icon(Icons.subscript),
          ),
          BottomNavigationBarItem(
            title: Text("Em Alta"),
            icon: Icon(Icons.folder),
          ),
        ],
      ),
    );
  }
}
