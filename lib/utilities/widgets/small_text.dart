import 'package:flutter/material.dart';
import '../dimensions.dart';


class SmallText extends StatelessWidget {
  Color color;
  final String text;
  double size;
  double height;
  FontWeight fontWeight;
  double foonSize;
  
  
  SmallText({super.key,
          this.color = const Color(0xD4070707),
          required this.text,
          this.size=12,
          this.height = 1.2,
          this.fontWeight = FontWeight.w300,
          this.foonSize= 20
          });

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: foonSize,
          height: height,
          fontWeight: fontWeight,
          letterSpacing: 1.4
          

          

        )
    );
  }
}