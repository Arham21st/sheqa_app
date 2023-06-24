import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheqa_app/screens/complete_info_page.dart';
import 'package:sheqa_app/screens/home_page.dart';
import 'package:sheqa_app/screens/login_page.dart';
import 'package:sheqa_app/screens/property_view1.dart';
import 'package:sheqa_app/screens/register_page.dart';
import 'package:sheqa_app/screens/select_role.dart';
import 'package:sheqa_app/screens/verification_code.dart';
import 'package:sheqa_app/utilities/app_colors.dart';
import 'package:sheqa_app/utilities/widgets/big_text.dart';
import 'package:sheqa_app/utilities/widgets/main_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: PropertyView1()
     
      
    );
  }
}

