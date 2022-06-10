import 'package:flutter/material.dart';
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

class restarante extends StatefulWidget {
  restarante({Key? key}) : super(key: key);

  @override
  State<restarante> createState() => _restaranteState();
}

class _restaranteState extends State<restarante> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.network("https://i.ibb.co/f82cj7S/RESTAURANTEs.png"),
          Container(
            padding: EdgeInsets.all(12),
            child: Text(
              "---- Disfruta de los mejores Restaurantes ----",
              style: TextStyle(fontSize: 18.4, fontWeight: FontWeight.bold),
            ),
          ),
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(15),
              elevation: 10,
              child: ClipRRect(
                // Los bordes del contenido del card se cortan usando BorderRadius
                borderRadius: BorderRadius.circular(30),
                child: Column(
                  children: <Widget>[
                    // Usamos el widget Image para mostrar una imagen
                    Image(
                      image: NetworkImage(
                          'https://media-cdn.tripadvisor.com/media/photo-s/12/f3/13/d5/la-plaza-bar-grill.jpg'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text("La Plaza Bar & Grill", style: TextStyle(fontSize: 20),),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => plazaBarGrill()));
                      },
                      child: Text('Ver')
                    ),
                  ],
                ),
              )),
          
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(15),
              elevation: 10,
              child: ClipRRect(
                // Los bordes del contenido del card se cortan usando BorderRadius
                borderRadius: BorderRadius.circular(30),
                child: Column(
                  children: <Widget>[
                    // Usamos el widget Image para mostrar una imagen
                    Image(
                      image: NetworkImage(
                          'https://media-cdn.tripadvisor.com/media/photo-s/17/e9/8a/d5/for-a-pictures.jpg'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text("Sunset Rooftop Bar", style: TextStyle(fontSize: 20),),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => sunsetRooftop()));
                      },
                      child: Text('Ver')
                    ),
                  ],
                ),
              )),
            
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(15),
              elevation: 10,
              child: ClipRRect(
                // Los bordes del contenido del card se cortan usando BorderRadius
                borderRadius: BorderRadius.circular(30),
                child: Column(
                  children: <Widget>[
                    // Usamos el widget Image para mostrar una imagen
                    Image(
                      image: NetworkImage(
                          'https://media-cdn.tripadvisor.com/media/photo-o/0c/3f/bc/8e/20160726-190725-largejpg.jpg'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text("Chicha por Gaston Acurio", style: TextStyle(fontSize: 20),),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chichaGaston()));
                      },
                      child: Text('Ver')
                    ),
                  ],
                ),
              )),
            
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(15),
              elevation: 10,
              child: ClipRRect(
                // Los bordes del contenido del card se cortan usando BorderRadius
                borderRadius: BorderRadius.circular(30),
                child: Column(
                  children: <Widget>[
                    // Usamos el widget Image para mostrar una imagen
                    Image(
                      image: NetworkImage(
                          'https://media-cdn.tripadvisor.com/media/photo-s/0f/0a/f3/b0/comedor-principal-main.jpg'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text("Zingaro", style: TextStyle(fontSize: 20),)
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => zingaro()));
                      },
                      child: Text('Ver')
                    ),
                  ],
                ),
              )),

            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(15),
              elevation: 10,
              child: ClipRRect(
                // Los bordes del contenido del card se cortan usando BorderRadius
                borderRadius: BorderRadius.circular(30),
                child: Column(
                  children: <Widget>[
                    // Usamos el widget Image para mostrar una imagen
                    Image(
                      image: NetworkImage(
                          'https://media-cdn.tripadvisor.com/media/photo-s/1b/1b/d1/5f/welcome-to-tipika.jpg'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text("Tipika - Restaurante Turistico", style: TextStyle(fontSize: 20),)
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => tipika()));
                      },
                      child: Text('Ver')
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}