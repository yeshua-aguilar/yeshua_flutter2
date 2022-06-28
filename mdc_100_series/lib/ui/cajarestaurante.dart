import "package:flutter/material.dart";
import "package:shrine/api/restaurante.dart";

class CajaRestaurante extends StatelessWidget {

  Rest restau;

  CajaRestaurante({required this.restau});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      child: Column(
        children: [
          Text(
            restau.name,
            style: TextStyle(fontSize: 18.4, fontWeight: FontWeight.bold),
          ),
          Image.network(this.restau.imagen),
          Text(
            restau.descripcion,
            style: TextStyle(fontSize: 18.4),
          ),
          RaisedButton(
            child: Text("Ver"),
            onPressed: (){
            },
          ),
        ],
      ),
    );







  }
}