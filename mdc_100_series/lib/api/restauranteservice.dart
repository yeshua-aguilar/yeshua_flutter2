import 'package:shrine/api/restaurante.dart';
import 'package:shrine/api/restaurantes.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class RestauranteService {

  final String api_url = "http://10.0.2.2:33966";

  Future<List<Rest>> getRestaurantes() async {
    var url = api_url + "/api/rest/all";
    final response = await http.get(Uri.parse(url));

    List<Rest> list = [];

    if (response.statusCode == 200){
      final responseJson = json.decode(response.body);
      final restauranteM = Rests.fromJsonList(responseJson['rest']);
      return restauranteM;
    }
    return <Rest>[];
  }
}
