import 'package:flutter/material.dart';
import 'package:sheqa_app/utilities/app_colors.dart';
import 'package:sheqa_app/utilities/dimensions.dart';
import 'package:sheqa_app/utilities/widgets/big_Text.dart';
import 'package:sheqa_app/utilities/widgets/small_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(240, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        toolbarHeight: Dimensions.height30*2.4,
        title: Padding(
          padding: EdgeInsets.only(left: Dimensions.width10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(text: "Hello, Sam!",
                  size: Dimensions.height30,
                  fontWeight: FontWeight.w800,
                  color: const Color.fromARGB(221, 255, 255, 255),),
        
              // SizedBox(height: Dimensions.height5,),
        
              SmallText(
                text: "Hope you are doing good :)",
                color: const Color.fromARGB(221, 255, 255, 255),
                foonSize: 12,)
        
            ],
          ),
        )

      ),
      body: Stack(
        children: [
          Positioned(
            child:
              SizedBox(
                height: Dimensions.height30*30,
                width: double.maxFinite,
                //color: Colors.red,
                child: GridView.builder(
                 itemCount: 4,
                 padding: EdgeInsets.all(Dimensions.width10),
                  
        
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: Dimensions.width10,
                      childAspectRatio: 1.3,
                      mainAxisSpacing: Dimensions.width10),
                 itemBuilder: (context, index) {
                    return Container(
                          padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10),
                                      decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(Dimensions.height10),
                                            color: Colors.white
                                      ),
                                      
                                     child: Center( 
                                        
                                        child: index==0?Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
        
                                          children: [
                                            Icon(Icons.home_work_outlined, color: AppColors.mainColor,size: Dimensions.height30*3,),
                                            SmallText(text: "Properties",foonSize: Dimensions.font16,fontWeight: FontWeight.w500,)
                                          ],
                                        ):
                                        index==1?Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(Icons.file_copy_outlined,color: AppColors.mainColor,size: Dimensions.height30*3,),
                                            SmallText(text: "Contracts",foonSize: Dimensions.font16,fontWeight: FontWeight.w500,)
        
                                          ],
                                        ):
                                        index==2?Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(Icons.calendar_month,color: AppColors.mainColor.withOpacity(0.7),size: Dimensions.height30*3,),
                                            SmallText(text: "View Appointments",foonSize: Dimensions.font16,fontWeight: FontWeight.w500,)
        
                                          ],
                                        ):
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(Icons.person_2_outlined,color: AppColors.mainColor,size: Dimensions.height30*3,),
                                            SmallText(text: "Profile",foonSize: Dimensions.font16,fontWeight: FontWeight.w500,)
        
                                          ],
                                        )
                      ),
                    );
        
                  },),
              
              
              )
               
            
          ),
          
          Positioned(
            top: Dimensions.height20*16.2,
            left: Dimensions.width20,
            child: BigText(text: "Recent Request",fontWeight: FontWeight.w400,size: Dimensions.font16,),
          ),
          
          Positioned(
            top: Dimensions.height20*16.2,
            left: Dimensions.width25*11,
            child: BigText(text: "See All",fontWeight: FontWeight.bold,color: AppColors.mainColor,size: Dimensions.font16,),
          ),
          
          Positioned(
            left: Dimensions.width15,
            
            top: Dimensions.height20*17.5,
            
              child: SizedBox(
                width: double.maxFinite,
                height: Dimensions.height20*6,
                child: ListView.builder(
              
                  itemCount: 3,
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context,int index){
                  return Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: Dimensions.height10),
                        width: Dimensions.height25*2,
                        height: Dimensions.height25*2,
                        decoration:  BoxDecoration( 
                          borderRadius: BorderRadius.circular(Dimensions.height25),
                          color: index.isEven?AppColors.mainColor:AppColors.signColor,
                          image: const DecorationImage(image: AssetImage("assets/images/profile.jpg"),
                          fit: BoxFit.cover,
                          )
                          ),
                        
                      ),
                      SizedBox(width: Dimensions.height15,),
                      Container(
                        width: Dimensions.width20*15,
                        height: Dimensions.height30*2,
                        padding: EdgeInsets.only(
                          top: Dimensions.height5,
                          bottom: Dimensions.height5,
                          right: Dimensions.width25),
                         
                        //color: Color.fromARGB(255, 255, 255, 255),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BigText(text: "mperdiet",size: Dimensions.font20,fontWeight: FontWeight.bold,),
                                BigText(text: "2 min ago",
                                size: Dimensions.font12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF000000),)
                              ],
                            ),
                            BigText(text: "Viverra magna lacus in.",
                            size: Dimensions.width15,fontWeight: FontWeight.w300,color: Colors.black,),
                            Container(
                              padding: EdgeInsets.only(right: Dimensions.width10),
                              decoration: const BoxDecoration(
                            border:BorderDirectional(bottom: BorderSide(color: Colors.black,width: 1))
                          ),
                            )
                          ],
                        ),
                      ),
                      
                    ],
                  );
                
                
                }),
              
            )
            
            
            
            
            ),
          
          Positioned(
            top: Dimensions.height20*24.5,
            left: Dimensions.width20,
            child: BigText(text: "Latest Appartments",fontWeight: FontWeight.w400,size: Dimensions.font16,),
          ),
          
          Positioned(
            top: Dimensions.height20*24.5,
            left: Dimensions.width25*11,
            child: BigText(text: "See All",fontWeight: FontWeight.bold,color: AppColors.mainColor,size: Dimensions.font16,),
          ),
          
         //Horizontal list
          Positioned(
            left: Dimensions.width5,
            right: 0,
            bottom: 0,
            top: Dimensions.height20*26,
            
            child: SizedBox(
              
              height: Dimensions.height20*11,
              child: ListView.builder(
                
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                
                itemBuilder: (context,index){
                return Container(
                  padding: EdgeInsets.only(left: Dimensions.width10),
                  child: Column(children: [
                    Container(
                      height: Dimensions.height20*5,
                      width: Dimensions.width20*7,
                      decoration: BoxDecoration(color: index.isEven? Colors.black:Colors.amber,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.height15),
                        topRight: Radius.circular(Dimensions.height15)),
                        image: const DecorationImage(image: AssetImage("assets/images/apartment2.jpg"),
                        fit: BoxFit.cover)
                        ),
                        
                    ),
                    Container(
                      height: Dimensions.height20*5.5,
                      width: Dimensions.width20*7,
                      padding: EdgeInsets.only(left: Dimensions.height10,
                      top: Dimensions.height5),
                      decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(Dimensions.height15),
                        bottomRight: Radius.circular(Dimensions.height15)
                        )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(text: "Modern House",fontWeight: FontWeight.bold,),
                            SizedBox(height: Dimensions.height5,),
                            Row(
                              children: [
                                BigText(text: "SA 325/",size: Dimensions.font16,),
                                SmallText(text: "Month",foonSize: Dimensions.font12,fontWeight: FontWeight.w400,)
                              ],
                            ),
                            SizedBox(height: Dimensions.height15,),
                            BigText(text: "4517 Washington Ave.",size: Dimensions.font12,fontWeight: FontWeight.w300,),
                            SizedBox(height: Dimensions.height5,),
                            BigText(text: "Manchester, Kentucky 39495",size: Dimensions.font12,fontWeight: FontWeight.w300,)
                          ],
                        ),
                    )
                  ]),
                );
              }
              ),
           
            )
            )

        ],
     
     
      )
    );
  }
}