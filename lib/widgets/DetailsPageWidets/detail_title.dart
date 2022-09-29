import 'package:flutter/material.dart';

class DetailsTitle extends StatelessWidget {
  final int id;
  final String name;
  final int height;
  const DetailsTitle({super.key, required this.id, required this.name, required this.height});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'name-$id',
      child: Material(
        color: Colors.white,
        type: MaterialType.transparency,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(21),
          )
        ),
        child: Chip(
          backgroundColor: Colors.white,
          label: Text(
            "${name[0].toUpperCase()}${name.substring(1)}",
            style: const TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          avatar: CircleAvatar(
            child: Text(
              id.toString(),
            ),
          ),
        ),
      ),
    );
  }
}
