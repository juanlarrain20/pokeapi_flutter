import 'package:flutter/material.dart';
import 'package:pokeapi_dogger/models/PokeModel.dart';


class PokemonTest extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonTest({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(pokemon.name)
    );

    
  }
}