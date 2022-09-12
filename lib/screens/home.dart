import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pokeapi_dogger/api/pokeapi.dart';
import 'package:pokeapi_dogger/models/PokeModel.dart';
import 'package:pokeapi_dogger/widgets/pokemon_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Pokemon> pokemon = List.empty();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPokemonFromPokeApi();
  }

  void getPokemonFromPokeApi() async {
    PokeApi.getPokemon().then((response) {
        List<Map<String, dynamic>> data = 
          List.from(json.decode(response.body)['results']);
        
        setState(() {
          pokemon = data.asMap().entries.map<Pokemon>((element) {
            element.value['id'] = element.key + 1;
            element.value['image'] = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${element.key + 1}.png";
          return Pokemon.fromJson(element.value);
          }).toList();
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PokemonGrid(pokemon: pokemon)
    );
  }
}
