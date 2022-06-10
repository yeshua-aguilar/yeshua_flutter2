import 'package:flutter/material.dart';

class tourQuad extends StatefulWidget {
  tourQuad({Key? key}) : super(key: key);

  @override
  State<tourQuad> createState() => _tourQuadState();
}

class _tourQuadState extends State<tourQuad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tour en Quad en Arequipa"),
      ),
      body: ListView(
        children: [
          Image.network(
              "https://media.tacdn.com/media/attractions-splice-spp-674x446/0a/ea/a2/e4.jpg"),
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
                          "Increíble viaje de un día para personas aventureras que quieran ver la vida salvaje y los volcanes alrededor del lago salado de Salinas.Esta actividad al aire libre incluye una agradable caminata por las salinas en busca de los mejores lugares destacados.",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("Servicios incluidos", style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "Transporte privado, Regreso a su hotel en el centro de Arequipa, Agua potable y snack, Quads y equipo de quitacion, guia de habla inglesa",
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
                          "Melgar 308, Melgar 308, Arequipa 04001, Perú",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("Detalles de la recogida", style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "Posada del Condor, Posada del Condor, Salaverry 204, Arequipa Peru",
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
                        title: Text("S/. 589", style: TextStyle(fontSize: 28)),
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
