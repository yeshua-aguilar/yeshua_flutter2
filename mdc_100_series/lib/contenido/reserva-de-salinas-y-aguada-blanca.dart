import 'package:flutter/material.dart';

class salinasAguada extends StatefulWidget {
  salinasAguada({Key? key}) : super(key: key);

  @override
  State<salinasAguada> createState() => _salinasAguadaState();
}

class _salinasAguadaState extends State<salinasAguada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reserva de Salinas y Aguada Blanca"),
      ),
      body: ListView(
        children: [
          Image.network(
              "https://denomades.s3.us-west-2.amazonaws.com/blog/wp-content/uploads/2019/12/02182253/shutterstock_1116408959.jpg"),
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
                    SizedBox(
                      height: 12,
                    ),
                    Center(
                      child: Text(
                        "Reserva Nacional Salinas y Aguada Blanca",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    ListTile(
                      subtitle: Text(
                          "Joya de patrimonio natural situada en las cercanías de Arequipa, a una altitud promedio de 4 300 msnm, una zona característica por sus paisajes que mezclan volcanes nevados, lagunas rodeadas de bofedales, bosques andinos y praderas.",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      subtitle: Text(
                          "Su sitio más famoso corresponde a la Laguna Salinas, un escenario de particular belleza configurado a partir de un salar de aguas someras y extensos bofedales que lo circundan, un verdadero santuario de avifauna que logra acoger en ciertas épocas del año cerca de 20 000 aves acuáticas, encontrándose entre ellas sus famosos flamencos que tiñen de colorido las aguas de la laguna.",
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
                        subtitle: Text("Vuelo + auto",
                            style: TextStyle(fontSize: 15)),
                      ),
                      Text(
                          "--------------------------------------------------------------------------------------"),
                      ListTile(
                        subtitle: Text("Precio por persona",
                            style: TextStyle(fontSize: 15)),
                      ),
                      ListTile(
                        title: Text("S/. 900", style: TextStyle(fontSize: 28)),
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
