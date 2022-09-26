import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:pokeapi_dogger/api/pokeapi.dart';
import 'package:pokeapi_dogger/models/PokeModel.dart';
import 'package:pokeapi_dogger/widgets/pokemon_card.widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  List<Pokemon> pokemon = List.empty();

  @override
  void initState() {
    super.initState();
    getPokemonFromPokeApi();

  }
/*
  Future<List<Pokemon>> getPokemons() async{
    for(int i = 1; i <=5; i++){
    http.Response response = await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/1/${i}'));
    final decoded = json.decode(response.body);

    print(decoded['name']);
    }
    return pokemon; 
  }
 */ 

  void getPokemonFromPokeApi() async {
    PokeApi.getPokemon().then((response) {
      List<Map<String, dynamic>> data =
          List.from(json.decode(response.body)['results']);
      setState(() {
        pokemon = data.asMap().entries.map<Pokemon>((element) {
          element.value['id'] = element.key + 1;
          element.value['img'] =
//              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${element.key + 1}.png";
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${element.key + 1}.png";
          return Pokemon.fromJson(element.value);
        }).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pokedex"),
        backgroundColor: Colors.redAccent,
      ),
      body: PokemonGrid(pokemon: pokemon),
      floatingActionButton: FloatingActionButton(
        heroTag: 'fab',
        onPressed: () {
          //getPokemons();
        },
        tooltip: 'Share',
        child: const Icon(
          Icons.share_rounded,
        ),
      ),
    );
  }
}
