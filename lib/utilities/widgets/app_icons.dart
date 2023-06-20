import 'package:flutter/material.dart';

class AppIcons extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color backgroungColor;
  final double size;
  final double iconSize;
  final double fill;

  const AppIcons({super.key, 
  required this.icon,
  this.iconColor=const Color(0xFF756d54),
  this.backgroungColor = const Color(0xFFfcf4e4),
  this.size = 40,
  this.iconSize =16,
  this.fill = 0.5,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size/2),
        color: backgroungColor
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
        fill: fill,
      ),
    );
  }
}