import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../dimensions.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  FontWeight fontWeight;
  
  BigText({super.key,
          this.color = const Color(0xFF332d2b),
          required this.text,
          this.size=0,
          this.overFlow=TextOverflow.ellipsis,
          this.fontWeight= FontWeight.w400
          });

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        maxLines: 1,
        overflow: overFlow,
        style: TextStyle(
          color: color,
          fontSize: size==0?Dimensions.font20:size,
          fontWeight: fontWeight,
         // fontFamily: 'Roboto-Regular',

          

        )
    );
  }
}