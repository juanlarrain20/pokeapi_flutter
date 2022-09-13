import 'package:flutter/material.dart';
import 'package:pokeapi_dogger/models/pokemon_screen_data.dart';
import 'package:pokeapi_dogger/widgets/detail_title.dart';
import 'package:pokeapi_dogger/widgets/details_data.dart';
import 'package:pokeapi_dogger/widgets/details_image.dart';


class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as PokemonScreenData;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            DetailsImage(image: arguments.img),
            DetailsTitle(id: arguments.id, name: arguments.name),
            DetailsData(id: arguments.id)
          ],
        ),
      ),
    );
  }
}