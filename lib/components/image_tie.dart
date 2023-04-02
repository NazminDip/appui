import 'package:flutter/material.dart';

class ImageTie extends StatelessWidget {
  final String imagePath;
  const ImageTie({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Image.asset(
          imagePath,
          height: 40,
        ),
      ),
    );
  }
}
