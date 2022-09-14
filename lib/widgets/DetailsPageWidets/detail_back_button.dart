import 'package:flutter/material.dart';

class DetailBackButton extends StatelessWidget {
  const DetailBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      heroTag: 'fab',
      onPressed: () => Navigator.pop(context),
      tooltip: 'share',
      label: const Text('Back'),
      icon: const Icon(Icons.arrow_back_ios_new_outlined),
    );
  }
}
