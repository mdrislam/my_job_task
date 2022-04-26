import 'package:flutter/material.dart';
import 'package:my_job_task/model/menus_response.dart';
import 'package:my_job_task/service/service_api.dart';

import 'package:my_job_task/ui/gb_widgets/section_tittle.dart';
import 'package:my_job_task/ui/home/components/set_menu_cart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SetMenus extends StatefulWidget {
  const SetMenus({Key? key}) : super(key: key);

  @override
  State<SetMenus> createState() => _SetMenusState();
}

class _SetMenusState extends State<SetMenus> {
  List<Menu> menusList = [];
  @override
  void initState() {
    getMenus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTittle(text: 'Set Menu', press: () {}, clickText: 'VIEW ALL'),
        const SizedBox(
          height: 15.0,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          child: Row(children: [
            ...List.generate(menusList.length, (index) =>  SetMenuCard(menu: menusList[index],)),
          ]),
        )
      ],
    );
  }

  getMenus() async {
    final prefs = await SharedPreferences.getInstance();
    MenusResponse? menusResponse =
        await ServiceApi.getMenuByToken(prefs.getString('token').toString());
    if (menusResponse!.statusCode == 200) {
      menusList = menusResponse.data!;
    }
    setState(() {});
  }
}
