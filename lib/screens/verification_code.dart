import 'package:flutter/material.dart';
import 'package:sheqa_app/utilities/app_colors.dart';
import 'package:sheqa_app/utilities/dimensions.dart';
import 'package:sheqa_app/utilities/widgets/app_icons.dart';
import 'package:sheqa_app/utilities/widgets/verification_code_field.dart';

import '../utilities/widgets/big_Text.dart';
import '../utilities/widgets/main_button.dart';
import '../utilities/widgets/small_text.dart';
import '../utilities/widgets/phone_text_field.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

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

                BigText(text: "Verification Code",size: Dimensions.height30,fontWeight: FontWeight.bold,),
                SizedBox(height: Dimensions.height15,),

                SmallText(text: "Pellentesque pellentesque amet porta sed ac duis sed diam.",),
                
                
                SizedBox(height: Dimensions.width10*8,),
                SizedBox(height: Dimensions.height20*10,
                
                
                child: const VerificationCodeField(),),
                
              ],
            ),
           ),

          Positioned(
            top: Dimensions.height30*13,
            left: Dimensions.width15*4.5,
            child: Row(
              children: [
                SmallText(text: "Didn’t get the code? ",fontWeight: FontWeight.w400,),
                SmallText(text: "Resend.",fontWeight: FontWeight.bold,color: AppColors.mainColor,),
              ],
            )
           
            ),

          Positioned(
            top: Dimensions.height30*16,
            left: Dimensions.width15,
            right: Dimensions.width15,
            child:  SizedBox(
                  height: Dimensions.height25*2,
                  width: Dimensions.width30*10,
                  child: const MainButton(text: "Proceed"),
                ), 
                
             ),  
        ],
      ),
    );
  }
}