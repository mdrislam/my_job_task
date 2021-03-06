import 'package:flutter/material.dart';
import 'package:my_job_task/config/size_config.dart';
import 'package:my_job_task/const/app_color_constant.dart';
import 'package:my_job_task/ui/cart/cart_page.dart';
import 'package:my_job_task/ui/favorite/favorite_page.dart';
import 'package:my_job_task/ui/home/home_page.dart';
import 'package:my_job_task/ui/menu/menu_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;
  final pages = const [HomePage(), CartPage(), FavoritePage(), MenuPage()];
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColorsConst.primaryColor,
        unselectedItemColor: AppColorsConst.secondaryColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        mouseCursor: SystemMouseCursors.grab,
        selectedFontSize: getProportionateScreenWidth(16),
        unselectedFontSize: getProportionateScreenWidth(16),
        iconSize: getProportionateScreenWidth(30.0),
        elevation: 0,
        onTap: (index) {
          setState(() => selectedIndex = index);
        },
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        ],
      ),
    );
  }
}
