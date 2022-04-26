import 'package:flutter/material.dart';
import 'package:my_job_task/config/size_config.dart';
import 'package:my_job_task/const/app_color_constant.dart';
import 'package:my_job_task/model/categorise_response.dart';
import 'package:my_job_task/ui/gb_widgets/section_tittle.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../service/service_api.dart';

class HomeCategory extends StatefulWidget {
  HomeCategory({Key? key}) : super(key: key);

  @override
  State<HomeCategory> createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  List<Category> categoryList = [];
  @override
  void initState() {
    getCategory();
    super.initState();
  }

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
          SectionTittle(text: 'All Categories', press: () {}, clickText: ''),
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
                  categoryList.length,
                  (index) => Container(
                        width: getProportionateScreenWidth(100),
                        margin: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                            Center(
                              child: Text(
                                categoryList[index].link!,
                                style: AppColorsConst.headingStyle(
                                  13,
                                ),
                                maxLines: 1,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                      )),
            ]),
          )
        ],
      ),
    );
  }

  getCategory() async {
    final prefs = await SharedPreferences.getInstance();
    CategoriseResponse? categoriseResponse =
        await ServiceApi.getCategoriseByToken(
            prefs.getString('token').toString());
    if (categoriseResponse!.statusCode == 200) {
      categoryList = categoriseResponse.data!;
    }
    setState(() {});
  }
}
