import 'package:flutter/material.dart';
import 'package:sheqa_app/utilities/app_colors.dart';
import 'package:sheqa_app/utilities/widgets/big_text.dart';
import 'package:sheqa_app/utilities/widgets/main_button.dart';

import '../utilities/dimensions.dart';
import '../utilities/widgets/app_icons.dart';

class PropertyView1 extends StatefulWidget {
  const PropertyView1({super.key});

  @override
  State<PropertyView1> createState() => _PropertyView1State();
}

class _PropertyView1State extends State<PropertyView1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(226, 255, 255, 255),
      body: Stack(
        children: [
          Positioned(
            left: Dimensions.width10,
            right: Dimensions.width15,
            top: Dimensions.width20*3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcons(icon: Icons.arrow_back_ios,
            backgroungColor: Colors.transparent,
            iconSize: Dimensions.font20,),
            BigText(text: "View Property/unit"),
            BigText(text: "Add",fontWeight: FontWeight.bold,color: AppColors.mainColor,)
              ],
            )
            ),

          Positioned(
            top: Dimensions.height20*5,
            left: Dimensions.width20,
            child: SizedBox(height: Dimensions.height20*30,
            width: Dimensions.width20*16,
            child: ListView.builder(
              padding: EdgeInsets.all(Dimensions.height20),
              shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context,index){
            return Column(
              children: [
                Container(
                  
                  width: Dimensions.width20*15,
                  height: Dimensions.height20*9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.height15),
                    color: Colors.white
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: Dimensions.width15,top: Dimensions.height10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(text: "City Name",color: AppColors.mainColor,fontWeight: FontWeight.bold,),
                        SizedBox(height: Dimensions.height10,),
                        BigText(text: "4140 Parker Rd. Allentown, New Mexico",
                        fontWeight: FontWeight.w300,size: Dimensions.height15,),
                        SizedBox(height: Dimensions.height5,),
                        BigText(text: "31134",
                        fontWeight: FontWeight.w300,size: Dimensions.height15,),
                        SizedBox(height: Dimensions.height10,),
                        BigText(text: "Ph: 123-456-7890",
                        fontWeight: FontWeight.w300,size: Dimensions.height15,),
                        SizedBox(height: Dimensions.height15,),
                        Row(
                          children: [
                            
                            Container(height: Dimensions.width30,
                            width: Dimensions.width45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.height10),
                              color: AppColors.mainColor
                            ),
                            child: Center(
                              child: BigText(text: "Edit",color: Colors.white,size: Dimensions.font16,),
                            )
                            ),
                            SizedBox(width: Dimensions.width15,),
                            Container(height: Dimensions.width30,
                            width: Dimensions.width45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.height10),
                              border: Border.all(color: Colors.black,width: 1.3,strokeAlign: BorderSide.strokeAlignInside),
                              color: Colors.white
                            ),
                            child: Center(
                              child: AppIcons(icon: Icons.delete_outline,
                              backgroungColor: Colors.transparent,
                              iconSize: Dimensions.font26,)
                            )
                            ),

                          ],
                        )
                      ],
                    ),
                  )
                ),
                SizedBox(height: Dimensions.height20,)
              ],
            );
          })
          ,)
          
          ),  

           Positioned(
            top: Dimensions.height30*24,
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