import 'package:flutter/material.dart';

class sunsetRooftop extends StatefulWidget {
  sunsetRooftop({Key? key}) : super(key: key);

  @override
  State<sunsetRooftop> createState() => _sunsetRooftopState();
}

class _sunsetRooftopState extends State<sunsetRooftop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sunset Rooftop Bar"),
      ),
      body: ListView(
        children: [
          Image.network(
              "https://media-cdn.tripadvisor.com/media/photo-s/17/e9/8a/d5/for-a-pictures.jpg"),
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
                          "Peruana, Bar, Pub",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("Caracteristicas", style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "Reservas, Asientos al aire libre, Asiento, Sirve alcohol, Bar completo, Acepta tarjetas de crédito, Servicio de mesa, Televisión, Vino y cerveza, Wi-Fi gratis",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("Comida", style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "Almuerzo, Cena, Brunch, Abierto hasta tarde, Bebidas",
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
                        title: Text("S/.8 - S/.30", style: TextStyle(fontSize: 28)),
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
