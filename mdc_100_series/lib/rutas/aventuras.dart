import 'package:flutter/material.dart';

class aventura extends StatefulWidget {
  aventura({Key? key}) : super(key: key);

  @override
  State<aventura> createState() => _aventuraState();
}

class _aventuraState extends State<aventura> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aventura'),
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