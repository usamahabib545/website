import 'package:flutter/material.dart';

import '../../../widgets/cachedImageWidget.dart';

class ScreenshotsScreen extends StatelessWidget {
  final List<String> images;

  const ScreenshotsScreen({Key? key, required this.images}) : super(key: key);

  void openImagePopup(BuildContext context, String imageUrl, String tag) {
    showDialog(
      context: context,
      builder: (_) => Dialog(
        backgroundColor: Colors.black,
        insetPadding: EdgeInsets.zero,
        child: Stack(
          children: [
            Center(
              child: InteractiveViewer(
                panEnabled: true,
                minScale: 0.5,
                maxScale: 4,
                child: Hero(
                  tag: tag,
                  child: CachedImage(
                    imageUrl: imageUrl,
                    fit: BoxFit.contain,
                    borderRadius: 0,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 16,
              left: 16,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.white, size: 30),
                onPressed: () => Navigator.pop(context),
                tooltip: 'Close',
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screenshots')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          int crossAxisCount = constraints.maxWidth < 1200 ? 1 : 2;

          return Padding(
            padding: constraints.maxWidth < 800
                ? const EdgeInsets.all(12)
                : const EdgeInsets.fromLTRB(100, 20, 100, 10),
            child: GridView.builder(
              itemCount: images.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 6 / 3,
              ),
              itemBuilder: (context, index) {
                final imageUrl = images[index];
                final tag = 'imageHero_$index';

                return GestureDetector(
                  onTap: () => openImagePopup(context, imageUrl, tag),
                  child: Hero(
                    tag: tag,
                    child: CachedImage(
                      imageUrl: imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}