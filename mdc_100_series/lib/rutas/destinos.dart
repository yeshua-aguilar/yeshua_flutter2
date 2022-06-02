import 'package:flutter/material.dart';

class destino extends StatefulWidget {
  destino({Key? key}) : super(key: key);

  @override
  State<destino> createState() => _destinoState();
}

class _destinoState extends State<destino> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destinos'),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            child: 
            Text("--------- Disfruta de los mejores Tours ----------", style: TextStyle(fontSize: 18.4, fontWeight: FontWeight.bold),),
          ),
          Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        // Los bordes del contenido del card se cortan usando BorderRadius
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: <Widget>[
            // Usamos el widget Image para mostrar una imagen
            Image(
              image: NetworkImage(
                  'https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg'),
            ),
            // Usamos Container para el contenedor de la descripción
            Container(
              padding: EdgeInsets.all(10),
              child: Text('Montañas'),
            ),
          ],
        ),
      )),
        ],
      ),
    );
  }
}