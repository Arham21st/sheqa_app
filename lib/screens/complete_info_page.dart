import 'package:flutter/material.dart';

import '../utilities/dimensions.dart';
import '../utilities/widgets/app_icons.dart';
import '../utilities/widgets/big_Text.dart';
import '../utilities/widgets/main_button.dart';
import '../utilities/widgets/phone_text_field.dart';
import '../utilities/widgets/small_text.dart';

class CompleteInfo extends StatefulWidget {
  const CompleteInfo({super.key});

  @override
  State<CompleteInfo> createState() => _CompleteInfoState();
}

class _CompleteInfoState extends State<CompleteInfo> {
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

                BigText(text: "Complete Info",size: Dimensions.height30,fontWeight: FontWeight.bold,),
                SizedBox(height: Dimensions.height15,),

                SmallText(text: "Pellentesque pellentesque amet porta sed ac duis sed diam.",
                 fontWeight: FontWeight.w300,
                 foonSize: Dimensions.width15,
                 height: 1.5,),

                SizedBox(height: Dimensions.height45,),
                BigText(text: "Name",size: Dimensions.height35/2,),
                SizedBox(height: Dimensions.width10,),
                SizedBox(height: Dimensions.height20*3,
                width: Dimensions.width20*17,
                child: PhoneTextField(icon: Icons.person,text: "Enter name here...",type: TextInputType.name),),

                SizedBox(height: Dimensions.height25,),
                BigText(text: "Email Address",size: Dimensions.height35/2,),
                SizedBox(height: Dimensions.width10,),
                SizedBox(height: Dimensions.height20*3,
                width: Dimensions.width20*17,
                child: PhoneTextField(icon: Icons.email_outlined,text: "Enter Email Address...",type: TextInputType.emailAddress,),),


                SizedBox(height: Dimensions.height25,),
                BigText(text: "Select City",size: Dimensions.height35/2,),
                SizedBox(height: Dimensions.width10,),
                SizedBox(height: Dimensions.height20*3,
                width: Dimensions.width20*17,
                child: PhoneTextField(icon: Icons.email_outlined,
                text: "Enter your city",
                type: TextInputType.emailAddress,
                suffixIcon: Icons.arrow_drop_down_outlined,),),
                
                
                
                
              ],
            ),
           ),

          Positioned(
            top: Dimensions.height30*25,
            left: Dimensions.width15,
            right: Dimensions.width15,
            child:  SizedBox(
                  height: Dimensions.height25*2,
                  width: Dimensions.width30*11,
                  child: const MainButton(text: "Submit"),
                ), 
                
             ),

        ],
      ),
    );
  }
}