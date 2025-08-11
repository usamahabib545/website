import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_progress_indicator.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "API Integration",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.78,
          label: "Git",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "Flutter Web",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "Desktop Applications",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.58,
          label: "Sqflite",
        ),
      ],
    );
  }
}
