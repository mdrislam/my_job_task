import 'package:flutter/material.dart';
import 'package:my_job_task/const/app_color_constant.dart';

import '../../config/size_config.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            height: SizeConfig.screenHight! * 0.07,
            color: AppColorsConst.primaryColor.withOpacity(0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/icons/closed.png'),
                const SizedBox(
                  width: 15.0,
                ),
                Text(
                  'Restaurant is close now , will be open at 9:00am',
                  style: AppColorsConst.titleStyle
                      .copyWith(fontSize: getProportionateScreenWidth(12)),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/logo.png',
                  scale: 1,
                  width: 100,
                ),
                Image.asset(
                  'assets/icons/bell-ring.png',
                  scale: 1,
                  width: getProportionateScreenWidth(30),
                  height: getProportionateScreenWidth(30),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 5, right: 10, left: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColorsConst.secondaryColor.withOpacity(0.2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/loupe.png',
                      scale: 1,
                      width: getProportionateScreenWidth(30),
                      height: getProportionateScreenWidth(30),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Search items here...',
                      style: AppColorsConst.titleStyle
                          .copyWith(fontSize: getProportionateScreenWidth(12)),
                    )
                  ],
                ),
                Image.asset(
                  'assets/icons/filtering.png',
                  scale: 1,
                  width: getProportionateScreenWidth(30),
                  height: getProportionateScreenWidth(30),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
