import 'package:flutter/material.dart';

class zingaro extends StatefulWidget {
  zingaro({Key? key}) : super(key: key);

  @override
  State<zingaro> createState() => _zingaroState();
}

class _zingaroState extends State<zingaro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zingaro"),
      ),
      body: ListView(
        children: [
          Image.network(
              "https://media-cdn.tripadvisor.com/media/photo-s/0f/0a/f3/b0/comedor-principal-main.jpg"),
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
                          "Peruana, Latina, Internacional",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("Dietas Especiales", style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "Apto para vegetarianos, Opciones veganas, Opciones sin gluten",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("Comida", style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "Almuerzo, Cena",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("Caracteristicas", style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "Comida para llevar, Asiento, Sillitas altas disponibles, Sirve alcohol, Bar completo, Vino y cerveza, Acepta American Express, Acepta Mastercard, Acepta Visa, Wi-Fi gratis, Reservas, Acceso para silla de ruedas, Acepta tarjetas de crédito, Servicio de mesa, Asientos al aire libre",
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
                        title: Text("S/.41 - S/.94", style: TextStyle(fontSize: 28)),
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
