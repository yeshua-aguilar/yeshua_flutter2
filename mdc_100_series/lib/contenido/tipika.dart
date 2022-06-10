import 'package:flutter/material.dart';

class tipika extends StatefulWidget {
  tipika({Key? key}) : super(key: key);

  @override
  State<tipika> createState() => _tipikaState();
}

class _tipikaState extends State<tipika> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tipika"),
      ),
      body: ListView(
        children: [
          Image.network(
              "https://media-cdn.tripadvisor.com/media/photo-s/1b/1b/d1/5f/welcome-to-tipika.jpg"),
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
                    ListTile(
                      title:
                          Text("Tipo de comida", style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "Peruano",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("Caracteristicas", style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "Comida para llevar, Reservas, Asientos al aire libre, Asiento, Sillitas altas disponibles, Acceso para silla de ruedas, Sirve alcohol, Bar completo, Wi-Fi gratis, Acepta tarjetas de crédito, Servicio de mesa, Estacionamiento en la calle, Patios de juegos, Estilo familiar",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("Comida", style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "Almuerzo, Abierto hasta tarde, Bebidas",
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
                        title: Text("S/.20 - S/.60", style: TextStyle(fontSize: 28)),
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
