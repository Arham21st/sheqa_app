import 'package:flutter/material.dart';
import 'package:sheqa_app/utilities/app_colors.dart';
import 'package:sheqa_app/utilities/dimensions.dart';

// Define a custom Form widget.
class PhoneTextField extends StatefulWidget {
  final String text;
   final IconData icon ;
  final TextInputType? type;
  final IconData? suffixIcon;
 

  PhoneTextField({super.key, required this.text, required this.icon, this.type, this.suffixIcon 
  });

  @override
  State<PhoneTextField> createState() => _PhoneTextFieldState();
}

// Define a corresponding State class.
// This class holds data related to the Form.
class _PhoneTextFieldState extends State<PhoneTextField> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  TextEditingController myController = TextEditingController();
   String? text;
   IconData? icon ;
  TextInputType? type;
  IconData? suffixIcon;
  
  

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    myController.addListener(_printLatestValue);
    text = widget.text;
    icon = widget.icon;
    type = widget.type;
   suffixIcon= widget.suffixIcon;
  
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myController.dispose();
    super.dispose();
  }

  void _printLatestValue() {
   // print('Second text field: ${myController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
        padding: EdgeInsets.only(bottom: 0),
        child: 
            TextField(
              controller: myController,
              keyboardType: type,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                suffixIcon: Icon(suffixIcon, color: Colors.black38,),
                prefixIcon: Icon(icon,color: AppColors.mainColor,),
                hintText: text,
                
                enabledBorder: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(Dimensions.height5),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: Dimensions.height10/5
                  ) ),
                focusedBorder: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(Dimensions.height5),
                  borderSide: BorderSide(color: AppColors.mainColor,
                  width:Dimensions.height10/5 ), ),
                
              ),
              
            ),
        
      ),
    );
  }
}