import 'package:flutter/material.dart';
import 'package:sheqa_app/utilities/app_colors.dart';
import 'package:sheqa_app/utilities/dimensions.dart';
import 'package:sheqa_app/utilities/widgets/big_text.dart';

class MainButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final FontWeight fontWeight;
  final Color textColor;
  final Color borderColor;

  const MainButton({super.key, 
  required this.text, 
  this.buttonColor=const Color(0xC51F7513), 
  this.fontWeight =FontWeight.bold,
  this.textColor=Colors.white,
  this.borderColor = Colors.transparent
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
             Container(
                height: Dimensions.height30*2,
                width: Dimensions.width30*10.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.height5),
                  border: Border.all(color: borderColor),
                  color: buttonColor,
                  
                ),
              ),
              BigText(text: text,
              color: textColor,
              fontWeight: fontWeight,)
          ],
        ),
      ),
      
    );
  }
}