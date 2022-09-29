import 'package:flutter/material.dart';
import 'package:pokeapi_dogger/models/pokemon_screen_data.dart';
import 'package:pokeapi_dogger/screens/details.dart';
import 'package:pokeapi_dogger/widgets/PokemonCardWidgets/pokemon_card_background.dart';
import 'package:pokeapi_dogger/widgets/PokemonCardWidgets/pokemon_card_data.dart';

class PokemonCard extends StatelessWidget {
  final int id;
  final int height;
  final String name;
  final String image;

  const PokemonCard({
    Key? key,
    required this.id,
    required this.name,
    required this.image,
    required this.height,
  }) : super(key: key);

  void navigate(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: ((context, animation, secondaryAnimation) => DetailsPage(
              id: id,
              name: name,
              image: image,
              height: height,
            )),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation.drive(Tween(begin: 0, end: 1)),
                child: child,
              );
            },
            transitionDuration: const Duration(milliseconds: 521),
            reverseTransitionDuration: const Duration(milliseconds: 444),
      ),
    );
  }

  BoxDecoration getContainerDecoration() => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: Colors.grey.withOpacity(0.24),
          width: 1,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        onTap: () => navigate(context),
        child: Container(
          padding: const EdgeInsets.all(7),
          decoration: getContainerDecoration(),
          child: Stack(
            children: [
              PokemonCardBackground(id: id),
              PokemonCardData(id: id, image: image, name: name),
            ],
          ),
        ),
      ),
    );
  }
}
