import 'package:flutter/material.dart';

class piedrasChoqolaqa extends StatefulWidget {
  piedrasChoqolaqa({Key? key}) : super(key: key);

  @override
  State<piedrasChoqolaqa> createState() => _piedrasChoqolaqaState();
}

class _piedrasChoqolaqaState extends State<piedrasChoqolaqa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bosque de Piedras Choqolaqa"),
      ),
      body: ListView(
        children: [
          Image.network(
              "https://i.postimg.cc/sXpqGrYV/choqolaqa.jpg"),
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
                        "Bosque de Piedras Choqolaqa",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    ListTile(
                      subtitle: Text(
                          "Choqolaqa es conocida como la antigua ciudad de Arequipa, el lugar histórico se compone de majestuosas rocas, según su historia ancestral Choqolaqa estaba formada por grandes Palacios y calles avenidas y zoológicos.",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      subtitle: Text(
                          "Dicen los lugareños que la antigua civilización sobre la decisión y los dioses que están convencidos de que la ciudad está en piedra sería la explicación de esta tierra, y con la aparición de las rocas, les aseguro a algunas personas que han tenido la oportunidad de conocer que este es un mundo diferente. Cada formación rocosa revela los secretos de la antigua civilización que habitó esta zona, es por eso que Arequipa hace de esta parte de Arequipa un viaje en el tiempo.",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("¿Como llegar?", style: TextStyle(fontSize: 20)),
                      subtitle: Text(
                          "Tendremos que tomar para visitar Choqolaqa por cuenta propia deberemos dirigirnos hacia Tisco, por un trayecto que durará alrededor de 5 horas, ya alli puedes consultar a los pobladores Cómo llegar a Choqolaqa que se encuentra a 2 horas de distancia. recomendamos tomar un tour turístico de visita desde Arequipa.",
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
                        subtitle: Text("Auto + guia",
                            style: TextStyle(fontSize: 15)),
                      ),
                      Text(
                          "--------------------------------------------------------------------------------------"),
                      ListTile(
                        subtitle: Text("Precio por persona",
                            style: TextStyle(fontSize: 15)),
                      ),
                      ListTile(
                        title: Text("S/. 500", style: TextStyle(fontSize: 28)),
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
