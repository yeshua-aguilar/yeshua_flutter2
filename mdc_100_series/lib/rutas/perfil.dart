import 'package:flutter/material.dart';

class perfil extends StatefulWidget {
  perfil({Key? key}) : super(key: key);

  @override
  State<perfil> createState() => _perfilState();
}

class _perfilState extends State<perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
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