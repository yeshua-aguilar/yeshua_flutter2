import 'package:flutter/material.dart';

class chichaGaston extends StatefulWidget {
  chichaGaston({Key? key}) : super(key: key);

  @override
  State<chichaGaston> createState() => _chichaGastonState();
}

class _chichaGastonState extends State<chichaGaston> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chicha por Gaston Acurio"),
      ),
      body: ListView(
        children: [
          Image.network(
              "https://media-cdn.tripadvisor.com/media/photo-o/0c/3f/bc/8e/20160726-190725-largejpg.jpg"),
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
                          "Una moderna propuesta Fusión Peruana Tex-Mex, en un ambiente casual y fresco, que se destaca por utilizar deliciosos ingredientes regionales. La carta ofrece ribs, hamburguesas, fajitas y platos típicos peruanos. Además de ensaladas personalizadas (Open Salad).",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("Tipo de comida", style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "Peruana, Bar, Fusión",
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
                          "Desayuno, Almuerzo, Cena, Bebidas, Abierto hasta tarde",
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
