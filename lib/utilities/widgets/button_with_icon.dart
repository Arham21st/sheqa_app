import 'package:flutter/material.dart';
import 'package:sheqa_app/utilities/widgets/app_icons.dart';

import '../dimensions.dart';
import 'big_Text.dart';

class ButtonIcon extends StatelessWidget {
  final String text;
   Color buttonColor;
   FontWeight fontWeight;
   Color textColor;
   Color borderColor;
  final IconData icon;
   Color iconColor;
   Color background;
   double iconSize;
  double seperation;
  double space;
  double fill;

  ButtonIcon({super.key,
  required this.text,
  this.buttonColor=const Color(0xC51F7513), 
  this.fontWeight =FontWeight.bold,
  this.textColor=Colors.white,
  this.borderColor = Colors.transparent,
  required this.icon,
  this.iconSize = 24,
  this.background = Colors.transparent,
  this.iconColor= Colors.transparent,
  this.seperation = 20,
  this.space = 10,
  this.fill = 0.5
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          alignment: Alignment.center,
          children: [
             Container(
                height: Dimensions.height30*2,
                width: Dimensions.width30*10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.height5),
                  border: Border.all(color: borderColor),
                  color: buttonColor,
                  
                ),
              ),
              Row(
                children: [
                  SizedBox(width: seperation,),
                  AppIcons(icon: icon,backgroungColor: background,iconColor:iconColor,iconSize: iconSize,fill: fill,),
                 SizedBox(width: space,),
                  BigText(text: text,
                      color: textColor,
                      fontWeight: fontWeight,)
                        ],
              )
          ],
        ),
    );
  }
}