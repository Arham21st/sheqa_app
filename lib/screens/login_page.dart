import 'package:flutter/material.dart';
import 'package:sheqa_app/utilities/app_colors.dart';
import 'package:sheqa_app/utilities/dimensions.dart';
import 'package:line_icons/line_icon.dart';
import 'package:sheqa_app/utilities/widgets/app_icons.dart';
import 'package:sheqa_app/utilities/widgets/big_Text.dart';
import 'package:sheqa_app/utilities/widgets/main_button.dart';
import 'package:sheqa_app/utilities/widgets/small_text.dart';

import '../utilities/widgets/phone_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
          Positioned(
            right: Dimensions.width25,
            top: Dimensions.height30*3,
            child:  Container(
              padding: EdgeInsets.only(left: Dimensions.width5,right: Dimensions.width5),
              height: Dimensions.width20*2,
              decoration: BoxDecoration(
                color: Color.fromRGBO(158, 158, 158, 0.055),
                borderRadius: BorderRadius.circular(Dimensions.width10)
              ),
              child: Row(
                children: [
                  AppIcons(icon: Icons.language,
                  backgroungColor: Colors.transparent,
                  iconSize: Dimensions.font26,),
                  BigText(text: "English",size: Dimensions.font20,color: Colors.black54,)
                ],
              )
              ,
            )
            ),
        
          Positioned(
            top: Dimensions.height30*4,
            left: Dimensions.width15,
            right: Dimensions.width15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                BigText(text: "Login",size: Dimensions.height35,fontWeight: FontWeight.bold,),
                SizedBox(height: Dimensions.height15,),

                SmallText(text: "Porttitor nunc duis ultrices consectetur\ncursus non et.",
                 fontWeight: FontWeight.w300,
                 size: Dimensions.width25,
                 height: 1.5,),
                
                SizedBox(height: Dimensions.height45,),
                BigText(text: "Phone Number",size: Dimensions.height35/2,),
                SizedBox(height: Dimensions.width10,),
                Container(height: 200,
                width: Dimensions.width20*17,
                child: PhoneTextField(icon: Icons.phone, text: '123',),),
                
              ],
            ),
           ),

           Positioned(
            top: Dimensions.height30*20,
            left: Dimensions.width15,
            right: Dimensions.width15,
            child:  SizedBox(
                  height: Dimensions.height25*2,
                  width: Dimensions.width30*10,
                  child: const MainButton(text: "Sign In"),
                ), 
                
             ),
           
           Positioned(
            top: Dimensions.height30*22.5,
            left: Dimensions.width15*11.5,
            child: BigText(text: "OR")
           
            ),
           
           Positioned(
            top: Dimensions.height30*24,
            left: Dimensions.width15,
            right: Dimensions.width15,
            child:  SizedBox(
                  height: Dimensions.height25*2,
                  width: Dimensions.width30*10,
                  child: const MainButton(text: "Login as a Guest",
                  buttonColor: Colors.transparent,
                  textColor: Colors.black54,
                  fontWeight: FontWeight.w300,
                  borderColor: Colors.black,),
                ), 
                
             ),      
        
            Positioned(
            top: Dimensions.height30*27,
            left: Dimensions.width15*7,
            child: Row(
              children: [
                SmallText(text: "No account?"),
                SmallText(text: "Create one.",fontWeight: FontWeight.bold,)
              ],
            )
           
            ),

        ],
      )
      
    );
  }
}