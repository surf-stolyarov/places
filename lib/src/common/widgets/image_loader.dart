import 'package:flutter/material.dart';

class ImageLoader extends StatelessWidget {
  final String url;

  const ImageLoader({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      // errorBuilder: (context, error, stackTrace) {},
    );
  }
}
