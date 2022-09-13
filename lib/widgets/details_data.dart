import 'package:flutter/material.dart';

class DetailsData extends StatelessWidget {
  final int id;
  const DetailsData({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,
        maxHeight: 500,
      ),
    );
  }
}