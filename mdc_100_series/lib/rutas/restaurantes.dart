import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shrine/api/restauranteservice.dart';
import 'package:shrine/contenido/bosque-de-piedras-choqolaqa.dart';
import 'package:shrine/contenido/chicha-gaston-acurio.dart';
import 'package:shrine/contenido/mirador-de-yanahura.dart';
import 'package:shrine/contenido/monasterio-de-santa-catalina.dart';
import 'package:shrine/contenido/plaza-bar-grill.dart';
import 'package:shrine/contenido/reserva-de-salinas-y-aguada-blanca.dart';
import 'package:shrine/contenido/sunset-rooftop.dart';
import 'package:shrine/contenido/tipika.dart';
import 'package:shrine/contenido/volcan-misti.dart';
import 'package:shrine/contenido/zingaro.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:shrine/ui/cajarestaurante.dart';

class restarante extends StatefulWidget {
  restarante({Key? key}) : super(key: key);

  @override
  State<restarante> createState() => _restaranteState();
}

class _restaranteState extends State<restarante> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // Image.network("https://i.ibb.co/f82cj7S/RESTAURANTEs.png"),
          // Container(
          //   padding: EdgeInsets.all(12),
          //   child: Text(
          //     "---- Disfruta de los mejores Restaurantes ----",
          //     style: TextStyle(fontSize: 18.4, fontWeight: FontWeight.bold),
          //   ),
          // ),
          FutureBuilder(
            initialData: [],
            future: RestauranteService().getRestaurantes(),
            builder: (BuildContext context, AsyncSnapshot<List> snapshot){
              if(snapshot.hasData){
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index){
                    var restaurante = snapshot.data![index];
                    return CajaRestaurante(
                      restau: restaurante,
                    );
                  }
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }
          )
    );
  }
}
