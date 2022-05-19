import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  List places = [
    {
      'nombre': 'Casa Andina Select Arequipa Plaza',
      'imagen': 'assets/imagen-1.png',
      'precio': '400',
      'descripcion': 'Este hotel refinado se encuentra en un edificio de estilo colonial español, frente a la Plaza de Armas, a 3 minutos a pie del museo Santuarios Andinos y a 7 minutos del monasterio de Santa Catalina.',
    },
    {
      'nombre': 'Hotel Corregidor',
      'imagen': 'assets/imagen-2.png',
      'precio': '146',
      'descripcion': 'Las habitaciones del Hotel Corregidor son sencillas y disponen de aire acondicionado y ropa de cama luminosa. Todas cuentan con TV por cable y vistas a la ciudad o al volcán. Las suites más grandes cuentan con bañera de hidromasaje privada.',
    },
    {
      'nombre': 'Hotel Katari At Plaza de Armas',
      'imagen': 'assets/imagen-3.png',
      'precio': '322',
      'descripcion': 'Katari At Plaza De Armas es un hotel situado en Arequipa. Katari es un término asociado en el Perú con la revalorización de las culturas andinas. Así mismo es una invitación para experimentar la esencia de Arequipa, respecto a su influencia colonial y su interesante historia pre-colonial.',
    },
    {
      'nombre': 'Viza Holel',
      'imagen': 'assets/imagen-4.png',
      'precio': '240',
      'descripcion': 'Recientemente remodelado, moderno y elegante, el Hotel Viza ofrece los siguientes servicios: recepción las 24 horas, conexión WI-FI gratuita, guardianía de equipajes gratuita, aparcamiento privado gratuito (bajo petición), lavandería, servicio de habitaciones (el hotel utiliza el sistema de limpieza alemán Hyla) y conserje.',
    },
    {
      'nombre': 'Mansion Riviera',
      'imagen': 'assets/imagen-5.png',
      'precio': '114',
      'descripcion': 'Mansión Riviera es un hotel tres estrellas, con una excelente ubicación, está a tres cuadras de la Plaza de Armas de la ciudad de Arequipa, Peru (zona altamente turística), y cuenta con un staff de personal altamente calificado para poder brindar un excelente servicio.',
    },
    {
      'nombre': 'Palla Boutique Hotel',
      'imagen': 'assets/imagen-6.png',
      'precio': '435',
      'descripcion': 'Palla Boutique un hotel de 4 estrellas ubicado a solamente dos cuadras de la Plaza de Armas, en el centro histórico de "la ciudad blanca" de Arequipa. Palla formó parte de la red de Tambos que se construyeron durante la época Incaica. Construido totalmente en Sillar, la piedra volcánica típica de la zona, combinada armónicamente con fierro forjado y piedra, lo que hace único a este hotel. "Disfruta Palla Renace en el Tiempo".',
    },
    {
      'nombre': 'Villa Sillar',
      'imagen': 'assets/imagen-7.jpg',
      'precio': '179',
      'descripcion': 'El hotel está construido con "Sillar", una piedra volcánica única en esta área. Con una ubicación estratégica, está a solo 3 cuadras de la majestuosa Plaza de Armas y la Catedral, a poca distancia de atracciones turísticas como el Monasterio de Santa Catalina y los principales museos, excelentes restaurantes con diversidad culinaria, bancos y cajeros automáticos, centros comerciales y áreas de entretenimiento. A solo 10 minutos en auto de los más increíbles miradores de Arequipa.',
    }
  ];

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;


    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: size.height * 0.4,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/app-viaje2.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  )
                ),
              ),
              Positioned(
                bottom: -40,
                left: 0,
                right: 0,
                child: Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 10),
                        blurRadius: 20
                      )
                    ]
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20),
                            hintText: 'Buscar',
                            hintStyle: TextStyle(color: Colors.grey),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(Icons.search, color: Colors.grey),
                      )
                    ],
                  ),
                )
              )
            ],
          ),
          SizedBox(height: 50),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Top Hoteles', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for(var data in places)
                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: Container(
                          width: 250,
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  ClipRRect(
                                    child: Image.asset(data['imagen']),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        bottomLeft: Radius.circular(30),
                                        topRight: Radius.circular(8)
                                      )
                                    ),
                                    child: Text('S/' + data['precio'], style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                    ),),
                                  )
                                ],
                              ),
                              Text(data['nombre'], style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18
                              ),),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('Mas Hoteles en Arequipa', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),),
                  ),
                  for(var data in places)
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage(data['imagen']),
                                fit: BoxFit.cover
                              )
                            ),
                            ),
                          ),
                        Expanded(
                          flex: 6,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(data['nombre'], style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16
                                ),),
                                SizedBox(height: 15),
                                Text(data['descripcion'], style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14
                                ),),
                                SizedBox(height: 15),
                                ElevatedButton(
                                  onPressed: (){},
                                  child: Text('Viajar ahora'),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text('S/.' + data['precio'], style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),
                          ),
                        ),
                      ],
                    ),
                  )
              ],
            )
          )
        ],
      )
    );
  }
}

class Boxshadow {
}
