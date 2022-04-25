import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_job_task/config/size_config.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../../../const/app_color_constant.dart';

class PopularItemCard extends StatelessWidget {
  dynamic item;
   PopularItemCard({Key? key,required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                  width: SizeConfig.screenWidth,
                  padding: const EdgeInsets.only(bottom: 10.0),
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            height: getProportionateScreenWidth(120),
                            width: getProportionateScreenWidth(120),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: ImageFiltered(
                                imageFilter: item['qt'] == 0
                                    ? ImageFilter.blur(
                                        sigmaX: 2.0,
                                        sigmaY: 2.0,
                                        tileMode: TileMode.mirror)
                                    : ImageFilter.blur(
                                        sigmaX: 0.0, sigmaY: 0.0),
                                child: Image.network(
                                  item['image'].toString(),
                                  scale: 1,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          if (item['qt'] == 0)
                            Center(
                              child: Text(
                                'Not \n Avaiable Now',
                                textAlign: TextAlign.center,
                                style: AppColorsConst.titleStyle
                                    .copyWith(color: Colors.white),
                                maxLines: 2,
                              ),
                            ),
                        ],
                      ),
                      Expanded(
                          child: Container(
                        height: getProportionateScreenWidth(120),
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item['name'].toString(),
                                        style: AppColorsConst.headingStyle(
                                          13,
                                        ),
                                        maxLines: 2,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: SmoothStarRating(
                                            allowHalfRating: false,
                                            onRatingChanged: (v) {},
                                            starCount: 5,
                                            rating: double.parse(
                                                item['avgRating']
                                                    .toString()),
                                            size: 20.0,
                                            color: AppColorsConst.primaryColor,
                                            borderColor:
                                                AppColorsConst.primaryColor,
                                            spacing: 0.0),
                                      ),
                                    ],
                                  ),
                                ),
                                Image.asset(
                                  'assets/icons/love.png',
                                  scale: 1,
                                  height: 25,
                                  width: 25,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\$${item['price']}',
                                  style: AppColorsConst.headingStyle(
                                    18,
                                  ).copyWith(fontWeight: FontWeight.w600),
                                ),
                                Image.asset(
                                  'assets/icons/plus-sign.png',
                                  scale: 1,
                                  height: 25,
                                  width: 25,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                );
  }
}