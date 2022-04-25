import 'package:flutter/material.dart';
import 'package:my_job_task/config/size_config.dart';
import 'package:my_job_task/const/app_color_constant.dart';
import 'package:my_job_task/ui/gb_widgets/section_tittle.dart';

class Banners extends StatefulWidget {
  const Banners({Key? key}) : super(key: key);

  @override
  State<Banners> createState() => _BannersState();
}

class _BannersState extends State<Banners> {
  final banner = [
    {
      'image':
          'https://s3.amazonaws.com/thumbnails.venngage.com/template/9efa693f-2f7b-4d70-b060-8ba87f5354e3.png'
    },
    {
      'image':
          'https://www.dochipo.com/wp-content/uploads/2021/01/banner-1-1024x576.png'
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVqVAWizZJ0yh_t1fp5gkOcZKDlsMKZi7qgA&usqp=CAU'
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU0mw8FG27rNE1vF1P_OaoIREB1rC0tLTeSg&usqp=CAU'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTittle(text: 'Banner', press: () {}, clickText: ''),
        const SizedBox(
          height: 15.0,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 10),
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          child: Row(children: [
            ...List.generate(
                banner.length,
                (index) => Container(
                      width: SizeConfig.screenWidth! * 0.8,
                      height: getProportionateScreenWidth(150),
                      margin: const EdgeInsets.only(right: 15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.network(
                          banner[index]['image'].toString(),
                          fit: BoxFit.fill,
                         
                        ),
                      ),
                    )),
          ]),
        )
      ],
    );
  }
}
