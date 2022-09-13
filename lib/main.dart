import 'package:flutter/material.dart';
import 'package:pokeapi_dogger/screens/details.dart';
import 'package:pokeapi_dogger/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      title: 'PokeDogger',
      initialRoute: "/",
      routes: {
        '/' : (context) => const HomePage(),
        '/details' : (context) => const DetailsPage(), 
      },
    );
  }
}