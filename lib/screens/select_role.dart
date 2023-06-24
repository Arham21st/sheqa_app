import 'package:flutter/material.dart';
import 'package:sheqa_app/utilities/app_colors.dart';
import 'package:sheqa_app/utilities/widgets/button_with_icon.dart';

import '../utilities/dimensions.dart';
import '../utilities/widgets/app_icons.dart';
import '../utilities/widgets/big_Text.dart';
import '../utilities/widgets/main_button.dart';
import '../utilities/widgets/small_text.dart';

class SelectRole extends StatelessWidget {
  const SelectRole({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: Dimensions.width10,
            top: Dimensions.width20*3,
            child: AppIcons(icon: Icons.arrow_back_ios,
            backgroungColor: Colors.transparent,
            iconSize: Dimensions.font20,)
            ),

          Positioned(
            top: Dimensions.height30*4,
            left: Dimensions.width15,
            right: Dimensions.width15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                BigText(text: "Select Role",size: Dimensions.height30,fontWeight: FontWeight.w800,),
                SizedBox(height: Dimensions.height15,),

                SmallText(text: "Please choose the registration type.",),
                
                
              ],
            ),
           ),


          Positioned(
            top: Dimensions.height30*9,
            left: Dimensions.width15,
            right: Dimensions.width15,
            child:  SizedBox(
                  height: Dimensions.height25*2,
                  width: Dimensions.width30*10,
                  child: ButtonIcon(
                    text: "Customer",
                    icon: Icons.person_outline_rounded,
                    buttonColor: Colors.white,
                    borderColor: Colors.black87,
                    textColor: Colors.black,
                    iconColor: AppColors.mainColor,
                    iconSize: Dimensions.height30,
                    fontWeight: FontWeight.normal,
                    seperation: Dimensions.width20*2,
                    background: Colors.black12,
                    ),
                ), 
                
             ),
           

          Positioned(
            top: Dimensions.height30*11.5,
            left: Dimensions.width15,
            right: Dimensions.width15,
            child:  SizedBox(
                  height: Dimensions.height25*2,
                  width: Dimensions.width30*10,
                  child: ButtonIcon(
                    text: "Owner /proxy ", 
                    icon: Icons.person_outline_sharp,
                    background: Colors.white30,
                    iconColor: Colors.white,
                    seperation: Dimensions.width20*2,
                    ),
                ), 
                
             ),
           
          Positioned(
            top: Dimensions.height30*25,
            left: Dimensions.width15,
            right: Dimensions.width15,
            child:  SizedBox(
                  height: Dimensions.height25*2,
                  width: Dimensions.width30*10,
                  child: const MainButton(text: "Next"),
                ), 
                
             ),
           

        ],
      ),
    );
  }
}