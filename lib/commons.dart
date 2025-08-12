import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_profile/widgets/cachedImageWidget.dart';

class DottedVerticalLine extends StatelessWidget {
  final double height;
  final double dotSpacing;
  final Color color;

  const DottedVerticalLine({
    Key? key,
    required this.height,
    this.dotSpacing = 6.0,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(2, height),
      painter: _DottedLinePainter(dotSpacing: dotSpacing, color: color),
    );
  }
}

class _DottedLinePainter extends CustomPainter {
  final double dotSpacing;
  final Color color;

  _DottedLinePainter({required this.dotSpacing, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = size.width;

    double startY = 0;
    while (startY < size.height) {
      canvas.drawLine(
        Offset(size.width / 2, startY),
        Offset(size.width / 2, startY + 2),
        paint,
      );
      startY += dotSpacing;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
void openImagePopup(BuildContext context, String imageUrl, String tag) {
  log("imageUrl.toString()");
  log(imageUrl.toString());
  showDialog(
    context: context,
    builder: (_) => Dialog(
      backgroundColor: Colors.black,
      insetPadding: EdgeInsets.all(16),
      child: Stack(
        children: [
          // Image with zoom
          Center(
            child: InteractiveViewer(
              panEnabled: true,
              minScale: 0.5,
              maxScale: 4,
              child: Hero(
                tag: tag,
                child: CachedImage(
                  imagePath: imageUrl,
                  borderRadius: 8,
                ),
              ),
            ),
          ),
          // Close button (top-left)
          Positioned(
            top: 16,
            left: 16,
            child: IconButton(
              icon: Icon(Icons.close, color: Colors.white, size: 30),
              onPressed: () => Navigator.pop(context),
              tooltip: 'Close',
            ),
          ),
        ],
      ),
    ),
  );
}