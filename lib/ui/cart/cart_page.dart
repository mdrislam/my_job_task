import 'package:flutter/material.dart';
import 'package:my_job_task/const/app_color_constant.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Cart Page',
          style: AppColorsConst.headingStyle(12),
        ),
      ),
      body: Center(
          child: Text(
        'Cart Page',
        style: AppColorsConst.titleStyle,
      )),
    );
  }
}
