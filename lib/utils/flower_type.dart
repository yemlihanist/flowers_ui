import 'package:flutter/material.dart';

class Flower_Type extends StatelessWidget {
  final String flowerType;
  final bool isSelected;
  final VoidCallback onTap;

  Flower_Type({
    required this.flowerType,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          flowerType,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.orange : Colors.white),
        ),
      ),
    );
  }
}
