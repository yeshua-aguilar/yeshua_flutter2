import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:shrine/rutas/aventuras.dart';
import 'package:shrine/rutas/destinos.dart';
import 'package:shrine/rutas/home.dart';
import 'package:shrine/rutas/perfil.dart';
import 'package:shrine/rutas/restaurantes.dart';

class barra extends StatefulWidget {
  barra({Key? key}) : super(key: key);

  @override
  State<barra> createState() => _barraState();
}

class _barraState extends State<barra> {

  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;

  final screens = [
    Homepage(),
    destino(),
    aventura(),
    restarante(),
    perfil()
  ];


  @override
  Widget build(BuildContext context) {

    final Items = <Widget>[
      Icon(Icons.home,size: 30),
      Icon(Icons.business_center,size: 30),
      Icon(Icons.directions_run_sharp,size: 30),
      Icon(Icons.restaurant,size: 30),
      Icon(Icons.person,size: 30),
    ];

    return Scaffold(
      body: screens[index],
      bottomNavigationBar: Theme(data: Theme.of(context).copyWith(
        iconTheme: IconThemeData(color: Colors.white), 
      ),
      child: CurvedNavigationBar(key: navigationKey,
      color: Colors.blueAccent,
      backgroundColor: Colors.transparent,
      height: 60,
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 300),
      index: index,
      items: Items,
      onTap: (index) => setState(() => this.index = index),
      ),
      ),
    );
  }
}