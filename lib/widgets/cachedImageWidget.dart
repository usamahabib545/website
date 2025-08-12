import 'package:flutter/material.dart';
class CachedImage extends StatelessWidget {
  final String imagePath;
  final double borderRadius;
  final BoxFit fit;
  final double? width;
  final double? height;

  const CachedImage({
    Key? key,
    required this.imagePath,
    this.borderRadius = 12,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: FutureBuilder(
        future: precacheImage(AssetImage(imagePath), context),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Image.asset(
              imagePath,
              fit: fit,
              width: width,
              height: height,
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
