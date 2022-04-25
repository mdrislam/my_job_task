import 'package:flutter/material.dart';

import 'package:my_job_task/const/app_color_constant.dart';
import 'package:my_job_task/ui/home/components/banners.dart';
import 'package:my_job_task/ui/home/components/home_category.dart';
import 'package:my_job_task/ui/home/components/popular_items.dart';
import 'package:my_job_task/ui/home/components/set_menus.dart';

import '../gb_widgets/home_page_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const HomePageHeader(),
              const SizedBox(
                height: 20,
              ),
              HomeCategory(),
              const SizedBox(
                height: 20,
              ),
              const SetMenus(),
              const SizedBox(
                height: 20,
              ),
              const Banners(),
              const SizedBox(
                height: 20,
              ),
              const PopularItems()
            ],
          ),
        ),
      ),
    );
  }
}
