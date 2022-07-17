import "package:flutter/material.dart";
import "package:shrine/api/restaurante.dart";

class CajaRestaurante extends StatelessWidget {

  Rest restau;

  CajaRestaurante({required this.restau});

  @override
  Widget build(BuildContext context) {
    return 
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
                    // Usamos el widget Image para mostrar una imagen
                    Image(
                      image: NetworkImage(this.restau.imagen)),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text(this.restau.name, style: TextStyle(fontSize: 20),)
                    ),
                    ElevatedButton(
                      onPressed: () {
                      },
                      child: Text('Ver')
                    ),
                  ],
                ),
              ));








  }
}