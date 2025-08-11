import 'dart:developer';

import 'package:flutter/material.dart';

import '../commons.dart';
import 'cachedImageWidget.dart';

class CombinedRowNetworkImages extends StatelessWidget {
  final List<String> imageUrls;
  final String tag;
  const CombinedRowNetworkImages({super.key, required this.imageUrls,required this.tag});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Row(
        children: List.generate(imageUrls.length, (index) {
          final url = imageUrls[index];
          final heroTag = 'image_$index$tag';
          return Expanded(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => openImagePopup(context, url, heroTag),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Hero(
                  tag: heroTag,
                  child: CachedImage(
                    imageUrl: url,
                    borderRadius: 8,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
