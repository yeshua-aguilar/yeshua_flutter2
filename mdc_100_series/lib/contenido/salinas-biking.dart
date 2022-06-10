import 'package:flutter/material.dart';

class salinasBiking extends StatefulWidget {
  salinasBiking({Key? key}) : super(key: key);

  @override
  State<salinasBiking> createState() => _salinasBikingState();
}

class _salinasBikingState extends State<salinasBiking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Salinas BikingTour"),
      ),
      body: ListView(
        children: [
          Image.network(
              "https://media.tacdn.com/media/attractions-splice-spp-674x446/0e/7f/99/81.jpg"),
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
                          "El lago Salinas es un lugar increíble ubicado a 2:00 hrs de Arequipa, es una opción perfecta para pasar un buen rato al aire libre. Este es un tour grupal en el que tendrás tiempo para apreciar el paisaje, tomar fotos y andar en bicicleta por el salar. Verá llamas, alpacas, vicuñas y flamencos.",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("Servicios incluidos", style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "Vehiculo con aire acondicionado, Desayuno, Uso de bicicleta, Incluye equipo de seguridad como casco, rodiulleras, coderas y guantes",
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
                          Text("Destalles de recogida", style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "El Portal de San Lazaro, El Portal de San Lazaro, Pasaje Violin 107 Frente a la Iglesia de San Lazaro - Unico Portal, Arequipa 054 Peru",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("Destalles de regreso", style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "Plaza de Armas de Arequipa, JF27+F6H, Arequipa 04001, Perú",
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
                        title: Text("S/. 342", style: TextStyle(fontSize: 28)),
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
