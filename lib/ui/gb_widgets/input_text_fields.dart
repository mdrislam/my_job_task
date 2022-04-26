import 'package:flutter/material.dart';
import 'package:my_job_task/const/app_color_constant.dart';

import '../../config/size_config.dart';

class InputTextField extends StatelessWidget {
  InputTextField({
    Key? key,
    required TextEditingController name,
    required this.readOnly,
    required this.lebelText,
    required this.icon,
    required this.press,
  })  : _name = name,
        super(key: key);

  final TextEditingController _name;
  final bool? readOnly;
  String? lebelText;
  IconData? icon;
  VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.start,
      controller: _name,
      style: AppColorsConst.titleStyle
          .copyWith(fontSize: getProportionateScreenWidth(16)),
      autofocus: false,
      readOnly: readOnly!,
      decoration: InputDecoration(
        hintStyle: AppColorsConst.detailsTextStyle
            .copyWith(fontSize: getProportionateScreenWidth(10)),
        icon: Icon(icon!),
        labelText: lebelText,
      ),
      onTap: press,
    );
  }
}
