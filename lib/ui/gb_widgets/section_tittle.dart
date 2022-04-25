import 'package:flutter/material.dart';

import '../../const/app_color_constant.dart';

class SectionTittle extends StatelessWidget {
  const SectionTittle({
    Key? key,
    required this.text,
    required this.press,
    required this.clickText,
  }) : super(key: key);
  final String text, clickText;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w600),
          ),
          GestureDetector(
              onTap: press,
              child: Text(
                clickText,
                style: AppColorsConst.titleStyle.copyWith(fontSize: 14),
              )),
        ],
      ),
    );
  }
}
