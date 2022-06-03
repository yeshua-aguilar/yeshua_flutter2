import 'package:flutter/material.dart';
import 'package:shrine/contenido/volcan-misti.dart';

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
            child: Text(
              "--------- Disfruta de los mejores Tours ----------",
              style: TextStyle(fontSize: 18.4, fontWeight: FontWeight.bold),
            ),
          ),
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
                      image: NetworkImage(
                          'https://denomades.s3.us-west-2.amazonaws.com/blog/wp-content/uploads/2019/12/02175004/shutterstock_340324499.jpg'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text("Volcán Misti", style: TextStyle(fontSize: 20),),
                      subtitle: Text("El Misti, de 5.822 metros de altura y más de 800.000 años, es uno de los 16 volcanes activos y potenciales del Perú. Si buscas el plan de aventura definitivo, te recomendamos escalar el Volcán de la Niebla"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => volcanMisti()));
                      },
                      child: Text('Ver')
                    ),
                  ],
                ),
              )),
          
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
                      image: NetworkImage(
                          'https://denomades.s3.us-west-2.amazonaws.com/blog/wp-content/uploads/2019/11/20224446/shutterstock_286127084.jpg'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text("Monasterio de Santa Catalina", style: TextStyle(fontSize: 20),),
                      subtitle: Text("En el corazón de la ciudad de Arequipa se encuentra una de las mayores estructuras del Perú colonial. Se trata del Monasterio de Santa Catalina, un recoleto convento construido en el siglo XVI con una superficie de más de 20.000 metros cuadrados que se puede visitar de principio a fin"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => volcanMisti()));
                      },
                      child: Text('Ver')
                    ),
                  ],
                ),
              )),
            
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
                      image: NetworkImage(
                          'https://denomades.s3.us-west-2.amazonaws.com/blog/wp-content/uploads/2019/12/02182253/shutterstock_1116408959.jpg'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text("Reserva Nacional de Salinas y Aguada Blanca", style: TextStyle(fontSize: 20),),
                      subtitle: Text("La Reserva Nacional Salinas y Aguada Blanca es uno de los maravillosos sitios naturales que vale la pena visitar en Arequipa y sus alrededores. Este es el hogar de los majestuosos volcanes de Arequipa, que mencionamos anteriormente, los animales típicos del altiplano andino como llamas, alpacas, vicuñas y guanacos, además de grandes lagunas es hogar de aves como los flamencos"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => volcanMisti()));
                      },
                      child: Text('Ver')
                    ),
                  ],
                ),
              )),
            
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
                      image: NetworkImage(
                          'https://denomades.s3.us-west-2.amazonaws.com/blog/wp-content/uploads/2019/12/02173801/city-tour-arequipa-1024x683.jpg'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text("Mirador de Yanahura", style: TextStyle(fontSize: 20),),
                      subtitle: Text("Si eres de esas personas a las que les gusta ver la ciudad que visitan en 360 grados, definitivamente debes visitar el mirador de Yanahur. Este mirador, ubicado en la pintoresca zona del mismo nombre, ofrece una de las vistas más impresionantes de Arequipa"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => volcanMisti()));
                      },
                      child: Text('Ver')
                    ),
                  ],
                ),
              )),

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
                      image: NetworkImage(
                          'https://denomades.s3.us-west-2.amazonaws.com/blog/wp-content/uploads/2019/12/02184740/choqola-1024x686.jpg'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text("Bosque de Piedras Choqolaqa", style: TextStyle(fontSize: 20),),
                      subtitle: Text("La foto de portada de este artículo y uno de los 10 lugares que no sabías que existían en Perú. El bosque de rocas de Chocolac parece un paisaje de otro planeta, una escena de una novela marciana de Hollywood o incluso una imagen surrealista de Dalí"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => volcanMisti()));
                      },
                      child: Text('Ver')
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
