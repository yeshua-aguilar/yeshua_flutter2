import 'package:flutter/material.dart';

class restarante extends StatefulWidget {
  restarante({Key? key}) : super(key: key);

  @override
  State<restarante> createState() => _restaranteState();
}

class _restaranteState extends State<restarante> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurantes'),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            child: 
            Text("--------- Disfruta de los mejores Restaurants ----------", style: TextStyle(fontSize: 18.4, fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}