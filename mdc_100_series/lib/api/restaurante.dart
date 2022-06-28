class Rest{
  String name;
  String descripcion;
  String imagen;
  String boton;

  Rest({
    required this.name,
    required this.descripcion,
    required this.imagen,
    required this.boton,
  });

  static Rest fromJson(Map<String, dynamic> json) {
    return Rest(
      name: json['name'] as String,
      descripcion: json['descripcion'] as String,
      imagen: json['imagen'] as String,
      boton: json['boton']as String,
    );
  }
}