import 'package:flutter/material.dart';

import 'package:my_job_task/ui/gb_widgets/section_tittle.dart';
import 'package:my_job_task/ui/home/components/set_menu_cart.dart';

class SetMenus extends StatefulWidget {
  const SetMenus({Key? key}) : super(key: key);

  @override
  State<SetMenus> createState() => _SetMenusState();
}

class _SetMenusState extends State<SetMenus> {
  
  @override
  void initState() {
    // TODO: implement initState
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
            ...List.generate(6, (index) => const SetMenuCard()),
          ]),
        )
      ],
    );
  }
}
