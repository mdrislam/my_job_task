
import 'package:flutter/material.dart';
import 'package:my_job_task/config/size_config.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../../../const/app_color_constant.dart';

class SetMenuCard extends StatelessWidget {
  const SetMenuCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          width: getProportionateScreenWidth(150),
          margin: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 243, 243, 243),
                  blurRadius: .2, // soften the shadow
                  spreadRadius: 0.0, //extend the shadow
                  offset: Offset(
                    0.0, // Move to right 10  horizontally
                    4.0, // Move to bottom 10 Vertically
                  ),
                )
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: 120,
                  width: getProportionateScreenWidth(150),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    child: Image.network(
                      'https://www.refrigeratedfrozenfood.com/ext/resources/NEW_RD_Website/DefaultImages/default-pasta.jpg?1430942591',
                      scale: 1,
                      fit: BoxFit.fill,
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        'Hazir Original biriyani full plate ',
                        style: AppColorsConst.headingStyle(
                          13,
                        ),
                        maxLines: 2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SmoothStarRating(
                            allowHalfRating: false,
                            onRatingChanged: (v) {},
                            starCount: 5,
                            rating: 5,
                            size: 20.0,
                            color: AppColorsConst.primaryColor,
                            borderColor:
                                AppColorsConst.primaryColor,
                            spacing: 0.0),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          crossAxisAlignment:
                              CrossAxisAlignment.center,
                          children: [
                            Text(
                              '\$50',
                              style: AppColorsConst.headingStyle(
                                13,
                              ).copyWith(
                                  fontWeight: FontWeight.w600),
                            ),
                            Image.asset(
                              'assets/icons/plus-sign.png',
                              scale: 1,
                              height: 25,
                              width: 25,
                            ),
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
        );
  }
}
