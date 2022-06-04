import 'package:flutter/material.dart';

class santacatalina extends StatefulWidget {
  santacatalina({Key? key}) : super(key: key);

  @override
  State<santacatalina> createState() => _santacatalinaState();
}

class _santacatalinaState extends State<santacatalina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Monasterio de Santa Catalina"),
      ),
      body: ListView(
        children: [
          Image.network(
              "https://denomades.s3.us-west-2.amazonaws.com/blog/wp-content/uploads/2019/11/20224446/shutterstock_286127084.jpg"),
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
                        "El Monasterio de Santa Catalina",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    ListTile(
                      subtitle: Text(
                          "Si quieres indagar sobre el mundo religioso tienes que ir al Monasterio de Monjas Privado de la Orden de Santa Catalina de Siena, actualmente llamado Monasterio de Santa Catalina en la ciudad de Arequipa, Perú.",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      subtitle: Text(
                          "El convento forma parte de los lugares turísticos de Arequipa, que simulan una ciudadela colonial, con arquitectura de estilo español. Dentro del monasterio encontrarás una colección de 400 cuadros religiosos, que se ha convertido en una de las más importantes de América Latina. Estas obras muestran una fusión sutil de las culturas incaica y española.",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("¿Como llegar?", style: TextStyle(fontSize: 20)),
                      subtitle: Text(
                          "Para acceder a este emblemático lugar lleno de historia de Arequipa debes llegar hasta la Plaza de Armas y bajar a la avenida que se ubica junto a la Basílica. Está abierto todos los días, excepto en Navidad, Año Nuevo y Viernes Santo. Para entrar tendrás que cancelar 30 soles y el recorrido te tomará hora media.",
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
                        subtitle: Text("Vuelo",
                            style: TextStyle(fontSize: 15)),
                      ),
                      Text(
                          "--------------------------------------------------------------------------------------"),
                      ListTile(
                        subtitle: Text("Precio por persona",
                            style: TextStyle(fontSize: 15)),
                      ),
                      ListTile(
                        title: Text("S/. 300", style: TextStyle(fontSize: 28)),
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
