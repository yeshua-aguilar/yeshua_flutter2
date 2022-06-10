import 'package:flutter/material.dart';

class trekkingCataratas extends StatefulWidget {
  trekkingCataratas({Key? key}) : super(key: key);

  @override
  State<trekkingCataratas> createState() => _trekkingCataratasState();
}

class _trekkingCataratasState extends State<trekkingCataratas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trekking, Cataratas y Baños Termales"),
      ),
      body: ListView(
        children: [
          Image.network(
              "https://media.tacdn.com/media/attractions-splice-spp-674x446/08/60/15/70.jpg"),
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
                    // Usamos Container para el contenedor de la descripción
                    Center(
                      child: Text(
                        "Descripción general",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    ListTile(
                      subtitle: Text(
                          "Esta es una experiencia única para viajeros que buscan conocer un espacio poco explorado durante su viaje. En este tour no se encontrarán con una cantidad masiva de turistas y podrán realizar un trekking muy divertido y fácil en medio de un cañón único en Arequipa. Además podrán combinar la experiencia de un trekking hermoso, cultura y baños termales",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("Servicios incluidos", style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "Aperitivos, Agua embotellada, Recojo de su Hotel",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("Salida y regreso", style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "Este operador tiene disponibles dos opciones de encuentro. Pueden encontrarse en el punto de salida que se indica a continuación o seleccionar una ubicación para la recogida.",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("Punto de partida", style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "C. Zela 301, C. Zela 301, Arequipa 04001, Perú",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("Hora de salida", style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "8:00 AM",
                          style: TextStyle(fontSize: 14)),
                    ),

                    Text("Te gusto nuestra informacion?"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InputChip(
                          avatar: Icon(Icons.emoji_emotions_outlined),
                          label: Text('Me gusto'),
                          onSelected: (bool value) {},
                        ),
                        InputChip(
                          avatar: Icon(Icons.mood_bad),
                          label: Text('No me gusto'),
                          onSelected: (bool value) {},
                        ),
                      ],
                    ),

                    Column(children: <Widget>[
                      Text(
                          "--------------------------------------------------------------------------------------"),
                      ListTile(
                        subtitle: Text("Precio por persona",
                            style: TextStyle(fontSize: 15)),
                      ),
                      ListTile(
                        title: Text("S/. 209", style: TextStyle(fontSize: 28)),
                        subtitle: Text("Incluyendo impuestos, tasas y cargos",
                            style: TextStyle(fontSize: 15)),
                      ),
                      ElevatedButton(onPressed: () {}, child: Text("Comprar"))
                    ]),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
