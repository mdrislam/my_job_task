import 'package:flutter/material.dart';
import 'package:my_job_task/const/app_color_constant.dart';
import 'package:my_job_task/ui/gb_widgets/section_tittle.dart';

class HomeCategory extends StatefulWidget {
  HomeCategory({Key? key}) : super(key: key);

  @override
  State<HomeCategory> createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
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
        children: [
          SectionTittle(text: 'Category', press: () {}, clickText: ''),
          const SizedBox(
            height: 15.0,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            child: Row(children: [
              ...List.generate(
                  6,
                  (index) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://www.refrigeratedfrozenfood.com/ext/resources/NEW_RD_Website/DefaultImages/default-pasta.jpg?1430942591',
                                scale: 1),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,bottom: 10),
                            child: Text(
                              'Category Name',
                              style: AppColorsConst.headingStyle(14),
                            ),
                          )
                        ],
                      )),
            ]),
          )
        ],
      ),
    );
  }
}
