import 'package:flutter/material.dart';
import 'package:my_job_task/config/size_config.dart';
import 'package:my_job_task/const/app_color_constant.dart';
import 'package:my_job_task/ui/navigation/bottom_navigation.dart';
import 'package:my_job_task/ui/signin/signin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          backgroundColor: Colors.white,
          primaryColor: AppColorsConst.primaryColor,
          brightness: Brightness.light),
      home: const SignInPage(),
    );
  }
}
