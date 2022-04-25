import 'package:flutter/material.dart';
import 'package:my_job_task/const/app_color_constant.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Favorite Page',
          style: AppColorsConst.headingStyle(12),
        ),
        
      ),
      body: Center(
          child: Text(
        'Favorite Page',
        style: AppColorsConst.titleStyle,
      )),
    );
  }
}
