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
        ],
      ),
    );
  }
}