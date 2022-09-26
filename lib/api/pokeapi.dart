import 'dart:async';
import 'package:http/http.dart' as http;


class PokeApi{
  static Future<http.Response> getPokemon() => 
      http.get(Uri.parse("https://pokeapi.co/api/v2/pokemon?limit=500"));
  
  
}