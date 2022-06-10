import 'package:flutter/material.dart';

class raftingRioChili extends StatefulWidget {
  raftingRioChili({Key? key}) : super(key: key);

  @override
  State<raftingRioChili> createState() => _raftingRioChiliState();
}

class _raftingRioChiliState extends State<raftingRioChili> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rafting en el río Chili"),
      ),
      body: ListView(
        children: [
          Image.network(
              "https://media.tacdn.com/media/attractions-splice-spp-674x446/0c/2a/ba/e2.jpg"),
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
                          "Pase el día navegando por el río Limay en una balsa de pie. Disfrute de las vistas de la estepa patagónica, aprenda sobre la flora y la fauna local, luego termine en Mangrullo por un tiempo para relajarse antes de regresar a Bariloche. Todo el equipo e instrucción incluidos, como transporte de ida y vuelta al hotel.",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("Servicios incluidos", style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "Equipo completo certificado (casco, chaleco, zapatos, traje de neopreno, chaqueta cortavientos), Traslados ida y vuelta al hotel, Aperitivos, Gui de rafting y kayakista de seguridad",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("Salida y regreso", style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "Hotel Yaravi, Hotel Yaravi, Alvarez Thomas 521, Arequipa 04000 Peru",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("Nota importante", style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "Recojo en hoteles céntricos de la ciudad de Arequipa.",
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
                        title: Text("S/. 96,60", style: TextStyle(fontSize: 28)),
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
