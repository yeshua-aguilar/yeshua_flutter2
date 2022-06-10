import 'package:flutter/material.dart';
import 'package:shrine/contenido/bosque-de-piedras-choqolaqa.dart';
import 'package:shrine/contenido/lago-salinas.dart';
import 'package:shrine/contenido/mirador-de-yanahura.dart';
import 'package:shrine/contenido/monasterio-de-santa-catalina.dart';
import 'package:shrine/contenido/rafting-rio-chili.dart';
import 'package:shrine/contenido/reserva-de-salinas-y-aguada-blanca.dart';
import 'package:shrine/contenido/salinas-biking.dart';
import 'package:shrine/contenido/tour-quad-arequipa.dart';
import 'package:shrine/contenido/trekking-cataratas.dart';
import 'package:shrine/contenido/volcan-misti.dart';

class aventura extends StatefulWidget {
  aventura({Key? key}) : super(key: key);

  @override
  State<aventura> createState() => _aventuraState();
}

class _aventuraState extends State<aventura> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.network("https://i.ibb.co/hBsfNFQ/Viaje-Aventuras-Miniatura-de-You-Tube.png"),
          Container(
            padding: EdgeInsets.all(12),
            child: Text(
              "------- Disfruta de los mejores Aventuras ------",
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
                          'https://media.tacdn.com/media/attractions-splice-spp-674x446/08/60/15/70.jpg'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text("Trekking, Cataratas y Baños Termales", style: TextStyle(fontSize: 20),),
                      subtitle: Text("Esta es una experiencia única para viajeros que buscan conocer un espacio poco explorado durante su viaje."),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => trekkingCataratas()));
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
                          'https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/3b/9b/f5.jpg'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text("Lago Salinas", style: TextStyle(fontSize: 20),),
                      subtitle: Text("El paisaje, la flora y la fauna son maravillosos; pero acompañado por un guía calificado, que conoce la zona y explica los secretos de este lugar, hace que esta experiencia sea inolvidable."),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => lagoSalina()));
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
                          'https://media.tacdn.com/media/attractions-splice-spp-674x446/0c/2a/ba/e2.jpg'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text("Rafting en el río Chili", style: TextStyle(fontSize: 20),),
                      subtitle: Text("Pase el día navegando por el río Limay en una balsa de pie. Disfrute de las vistas de la estepa patagónica, aprenda sobre la flora y la fauna local, luego termine en Mangrullo por un tiempo para relajarse antes de regresar a Bariloche."),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => raftingRioChili()));
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
                          'https://media.tacdn.com/media/attractions-splice-spp-674x446/0e/7f/99/81.jpg'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text("Salinas BikingTour", style: TextStyle(fontSize: 20),),
                      subtitle: Text("El lago Salinas es un lugar increíble ubicado a 2:00 hrs de Arequipa, es una opción perfecta para pasar un buen rato al aire libre."),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => salinasBiking()));
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
                          'https://media.tacdn.com/media/attractions-splice-spp-674x446/0a/ea/a2/e4.jpg'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text("Tour en Quad en Arequipa", style: TextStyle(fontSize: 20),),
                      subtitle: Text("Increíble viaje de un día para personas aventureras que quieran ver la vida salvaje y los volcanes alrededor del lago salado de Salinas."),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => tourQuad()));
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