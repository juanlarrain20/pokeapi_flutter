import 'package:flutter/material.dart';
import 'package:pokeapi_dogger/models/pokemon_screen_data.dart';
import 'package:pokeapi_dogger/widgets/details.widgets.dart';

class DetailsPage extends StatelessWidget {
  final int? id;
  final String? name;
  final String? image;
  final String? weight;
  const DetailsPage({
    super.key,
    this.id,
    this.name,
    this.image,
    this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            DetailsImage(image: image!, id: id!),
            DetailsTitle(id: id!, name: name!),
            DetailsData(id: id!,)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: const DetailBackButton(),
    );
  }
}
