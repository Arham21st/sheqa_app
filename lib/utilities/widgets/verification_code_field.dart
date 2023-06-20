import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sheqa_app/utilities/app_colors.dart';
import 'package:sheqa_app/utilities/dimensions.dart';

// Define a custom Form widget.
class VerificationCodeField extends StatefulWidget {
  const VerificationCodeField({super.key});

  @override
  State<VerificationCodeField> createState() => _VerificationCodeFieldState();
}

// Define a corresponding State class.
// This class holds data related to the Form.
class _VerificationCodeFieldState extends State<VerificationCodeField> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();
  final myController4 = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    myController.addListener(_printLatestValue);
    myController2.addListener(_printLatestValue);
    myController3.addListener(_printLatestValue);
    myController4.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myController.dispose();
    myController2.dispose();
    myController3.dispose();
    myController4.dispose();
    super.dispose();
  }

  void _printLatestValue() {
   // print('Second text field: ${myController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
        padding: EdgeInsets.only(bottom: Dimensions.height10),
        child: 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: Dimensions.height20*7,
                  width: Dimensions.width25*2,
                  child: TextField(
                    onChanged: (value) {
                      if(value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    controller: myController,
                    style: Theme.of(context).tabBarTheme.unselectedLabelStyle,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,

                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(Dimensions.height5),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: Dimensions.height10/5
                      ) 
                      ),

                      focusedBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(Dimensions.height5),
                      borderSide: BorderSide(color: AppColors.mainColor,
                      width:Dimensions.height10/5 ), ),
                        ),
                    
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                      ],

                  ),
                ),

                SizedBox(
                  height: Dimensions.height20*7,
                  width: Dimensions.width25*2,
                  child: TextField(
                    onChanged: (value) {
                      if(value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    controller: myController2,
                    style: Theme.of(context).tabBarTheme.unselectedLabelStyle,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,

                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(Dimensions.height5),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: Dimensions.height10/5
                      ) 
                      ),

                      focusedBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(Dimensions.height5),
                      borderSide: BorderSide(color: AppColors.mainColor,
                      width:Dimensions.height10/5 ), ),
                        ),

                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                      ],

                  ),
                ),
                
                SizedBox(
                  height: Dimensions.height20*7,
                  width: Dimensions.width25*2,
                  child: TextField(
                    onChanged: (value) {
                      if(value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    controller: myController3,
                    style: Theme.of(context).tabBarTheme.unselectedLabelStyle,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(Dimensions.height5),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: Dimensions.height10/5
                      ) 
                      ),

                      focusedBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(Dimensions.height5),
                      borderSide: BorderSide(color: AppColors.mainColor,
                      width:Dimensions.height10/5 ), ),
                        ),

                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                      ],

                  ),
                ),
                
                SizedBox(
                  height: Dimensions.height20*7,
                  width: Dimensions.width25*2,
                  child: TextField(
                    onChanged: (value) {
                      if(value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    controller: myController4,
                    style: Theme.of(context).tabBarTheme.unselectedLabelStyle,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,

                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(Dimensions.height5),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: Dimensions.height10/5
                      ) 
                      ),

                      focusedBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(Dimensions.height5),
                      borderSide: BorderSide(color: AppColors.mainColor,
                      width:Dimensions.height10/5 ), ),
                        ),

                    
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                      ],

                  ),
                ),
                
              ],
            )
        
      ),
    );
  }
}