import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/size_config.dart';

class AppColorsConst {
  static const primaryColor = Colors.deepOrange;
  static const primaryLightColor = Color(0xFFFFECDF);

  static const secondaryColor = Color(0xFF979797);
  static const textColor = Color(0xFF757575);

  TextStyle subHeadingStyle(double? size) {
    return GoogleFonts.lato(
        textStyle: TextStyle(
            fontSize: size!, fontWeight: FontWeight.bold, color: Colors.grey));
  }

  TextStyle headingStyle(double? size) {
    return GoogleFonts.lato(
        textStyle: TextStyle(
            fontSize: size!, fontWeight: FontWeight.bold, color: Colors.black));
  }

  TextStyle get titleStyle {
    return GoogleFonts.lato(
        textStyle: TextStyle(
            fontSize: getProportionateScreenWidth(16),
            fontWeight: FontWeight.w400,
            color: Colors.black));
  }

  TextStyle get detailsTextStyle {
    return GoogleFonts.lato(
        textStyle: TextStyle(
            fontSize: getProportionateScreenWidth(13),
            fontWeight: FontWeight.normal,
            color: Colors.black));
  }

  TextStyle get accountTextStyle {
    return GoogleFonts.lato(
        textStyle: TextStyle(
            fontSize: getProportionateScreenWidth(13),
            fontWeight: FontWeight.normal,
            color: Colors.black));
  }
}
