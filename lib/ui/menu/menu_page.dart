import 'package:flutter/material.dart';
import 'package:my_job_task/const/app_color_constant.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Page'),
      ),
      body: Center(
          child: Text(
        'Menu Page',
        style: AppColorsConst.titleStyle,
      )),
    );
  }
}
