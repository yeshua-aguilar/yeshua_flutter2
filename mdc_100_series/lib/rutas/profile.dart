import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0,0,10.0,0),

        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Image.network(
                    "https://spain.progress.im/sites/default/files/dsc07844-e1415010478299.jpg",
                    fit: BoxFit.cover,
                    width: 100.0,
                    height: 100.0,
                  ),
                ),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Jane Doe",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 5.0),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "jane@doefamily.com",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 20.0),
                    ],
                  ),
                  flex: 3,
                ),
              ],
            ),

            Divider(),
            Container(height: 15.0),

            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                "Informacion de cuenta".toUpperCase(),
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            ListTile(
              title: Text(
                "Nombre Completo",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),

              subtitle: Text(
                "Jane Mary Doe",
              ),

              trailing: IconButton(
                icon: Icon(
                  Icons.edit,
                  size: 20.0,
                ),
                onPressed: (){
                },
                tooltip: "Edit",
              ),
            ),

            ListTile(
              title: Text(
                "Email",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),

              subtitle: Text(
                "jane@doefamily.com",
              ),
            ),

            ListTile(
              title: Text(
                "Telefono",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),

              subtitle: Text(
                "+1 816-926-6241",
              ),
            ),

            ListTile(
              title: Text(
                "Direccion",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),

              subtitle: Text(
                "1278 Loving Acres RoadKansas City, MO 64110",
              ),
            ),

            ListTile(
              title: Text(
                "Genero",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),

              subtitle: Text(
                "Hombre",
              ),
            ),

            ListTile(
              title: Text(
                "Dia de su nacimiento",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),

              subtitle: Text(
                "April 9, 1995",
              ),
            ),

          ],
        ),
      ),
    );
  }
}
