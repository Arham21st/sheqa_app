import 'package:flutter/material.dart';

import '../utilities/app_colors.dart';
import '../utilities/dimensions.dart';
import '../utilities/widgets/app_icons.dart';
import '../utilities/widgets/big_Text.dart';
import '../utilities/widgets/main_button.dart';
import '../utilities/widgets/phone_text_field.dart';
import '../utilities/widgets/small_text.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
bool? isChecked = false;


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

                BigText(text: "Register",size: Dimensions.height30,fontWeight: FontWeight.bold,),
                SizedBox(height: Dimensions.height15,),

                SmallText(text: "Pellentesque pellentesque amet porta sed ac duis sed diam.",
                 fontWeight: FontWeight.w300,
                 size: Dimensions.width25,
                 height: 1.5,),

                SizedBox(height: Dimensions.height45,),
                BigText(text: "Phone Number",size: Dimensions.height35/2,),
                SizedBox(height: Dimensions.width10,),
                SizedBox(height: Dimensions.height20*3,
                width: Dimensions.width20*17,
                child: PhoneTextField(icon: Icons.phone, text: '123',),),
                
                
                
                
              ],
            ),
           ),

          Positioned(
            top: Dimensions.height30*15,
            left: Dimensions.width15,
            right: Dimensions.width15,
            child: Row(
            children: [
              Checkbox(
                side: BorderSide(color: const Color.fromARGB(255, 7, 7, 7),width: 1.5,strokeAlign: 2),
                checkColor: AppColors.mainColor,
                value: isChecked,
                activeColor: Colors.white,
                onChanged: (newbool){
                  setState(() {
                    isChecked = newbool;
                  });
                },
                   
                ),
                SmallText(text: "By creating this account you agree \n on Terms and Conditions.",
                foonSize: Dimensions.font26/2,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF000000),)
            ],
          ),
          ),

          Positioned(
            top: Dimensions.height30*17,
            left: Dimensions.width15,
            right: Dimensions.width15,
            child:  SizedBox(
                  height: Dimensions.height25*2,
                  width: Dimensions.width30*10,
                  child: const MainButton(text: "Register"),
                ), 
                
             ),

        ],
      ),
    );
  
  }
}