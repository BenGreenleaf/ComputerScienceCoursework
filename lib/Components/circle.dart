import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final double size;
  const Circle({
    super.key,
    required this.size,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
