import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class DestinationDescriptionWidget extends StatelessWidget {
  final String description;

  const DestinationDescriptionWidget({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      description,
      style: const TextStyle(color: Colors.red),
    );
  }
}
