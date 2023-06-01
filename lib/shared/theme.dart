import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.0;
double defaultRadius = 17.0;
//ColorStyle
Color PrimaryColor = Color(0xff5C40CC);
Color SecoundaryColor = Color(0xfE0D9FF);
Color KeyBlackColor = Color(0xff1F1449);
Color KeyWhiteColor = Color(0xffFFFFFF);
Color KeyGrayColor = Color(0xff9698A9);
Color KeyGreenColor = Color(0xff0EC3AE);
Color KeyRedColor = Color(0xffEB70A5);
Color InActiveColor = Color(0xffDBD7EC);
Color KBackgroundColor = Color(0xffFAFAFA);
Color KTransparenColor = Colors.transparent;
Color Kunavalibel = Color(0xffEBECF1);

//TextStyle
TextStyle BlackTextStyle = GoogleFonts.poppins(
  color: KeyBlackColor,
);
TextStyle WhiteTextStyle = GoogleFonts.poppins(
  color: KeyWhiteColor,
);
TextStyle GreyTextStyle = GoogleFonts.poppins(
  color: KeyGrayColor,
);
TextStyle RedTextStyle = GoogleFonts.poppins(
  color: KeyRedColor,
);
TextStyle GreenTextStyle = GoogleFonts.poppins(
  color: KeyGreenColor,
);
TextStyle PurpleTextStyle = GoogleFonts.poppins(
  color: PrimaryColor,
);

FontWeight light = FontWeight.w300;
FontWeight reguler = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semibold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extrabold = FontWeight.w800;
FontWeight black = FontWeight.w900;
