import 'package:flutter/material.dart';

class DetailsImage extends StatelessWidget {
  final String image;
  const DetailsImage({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Stack(
          children: [
            Container(
              height: 500,
              width: 500,
              decoration: const BoxDecoration(
                color: Colors.white10,
                shape: BoxShape.circle,
              ),
              
            ),
            Image.network(
              image,
              fit: BoxFit.contain,
              alignment: Alignment.center,
            )
          ],
        ),
      ),
    );
  }
}
