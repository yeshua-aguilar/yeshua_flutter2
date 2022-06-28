

import 'package:shrine/api/restaurante.dart';

class Rests {

  Rests();

  static List<Rest> fromJsonList(List<dynamic> jsonList){
    List<Rest> ListaRest = [];

    if (jsonList != null){
      for (var restaurante in jsonList){
        final rest = Rest.fromJson(restaurante);
        ListaRest.add(rest);
      }
    }
    return ListaRest;
  }

}