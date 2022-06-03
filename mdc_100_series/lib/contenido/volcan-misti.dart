import 'package:flutter/material.dart';

class volcanMisti extends StatefulWidget {
  volcanMisti({Key? key}) : super(key: key);

  @override
  State<volcanMisti> createState() => _volcanMistiState();
}

class _volcanMistiState extends State<volcanMisti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("volcan Misti"),
      ),
      body: ListView(
        children: [
          Image.network(
              "https://denomades.s3.us-west-2.amazonaws.com/blog/wp-content/uploads/2019/12/02175004/shutterstock_340324499.jpg"),
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
                        "Volcán Misti",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    ListTile(
                      subtitle: Text(
                          "Arequipa tiene uno de los destinos más impresionantes para los viajeros más atrevidos: el Misti, un volcán de 5.822 metros, con más de 800 mil años de antigüedad y que se encuentra entre los 16 volcanes activos y potencialmente activos del Perú. Si buscas un plan de máxima aventura, te recomendamos realizar el ascenso al Volcán Misti, una travesía de dos días rodeada de increíbles paisajes, acampando a más de 4.000 metros sobre el nivel del mar y con una llegada a la meta totalmente única: la vista del cráter del Misti.",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("¿Como llegar?", style: TextStyle(fontSize: 20)),
                      subtitle: Text(
                          "Aunque Misty se puede ver desde casi cualquier lugar de la Ciudad Blanca, si quieres subir a la cima te recomendamos contratar una visita guiada ya que es un desafío de escalada alpina desafiante y debes ir acompañado de un guía. que conoce la zona y puede acompañarte en cada paso del camino.",
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
                      ListTile(
                        title: Text("Partiendo desde Lima",
                            style: TextStyle(fontSize: 18)),
                        subtitle: Text("Vuelo + Guia",
                            style: TextStyle(fontSize: 15)),
                      ),
                      Text(
                          "--------------------------------------------------------------------------------------"),
                      ListTile(
                        subtitle: Text("Precio por persona",
                            style: TextStyle(fontSize: 15)),
                      ),
                      ListTile(
                        title: Text("S/. 800", style: TextStyle(fontSize: 28)),
                        subtitle: Text("Incluyendo impuestos, tasas y cargos",
                            style: TextStyle(fontSize: 15)),
                      ),
                      ElevatedButton(onPressed: () {}, child: Text("Comprar"))
                    ]),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
