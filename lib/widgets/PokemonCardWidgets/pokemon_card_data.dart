import 'package:flutter/material.dart';

class PokemonCardData extends StatelessWidget {
  final int id;
  final String image;
  final String name;
  const PokemonCardData({
    Key? key,
    required this.image,
    required this.name,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(11),
            child: Hero(
              tag: 'image-$id',
              child: Image.network(
                image,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        const Divider(),
        Hero(
          tag: 'name-$id',
          child: Material(
            color: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(21),
              ),
            ),
            child: Text(
              "${name[0].toUpperCase()}${name.substring(1)}",
              style: const TextStyle(
                fontSize: 21,
                color: Colors.black87,
              ),
            ),
          ),
        )
      ],
    );
  }
}
