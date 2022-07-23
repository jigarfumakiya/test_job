import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_core/core/utils/screen_utils.dart';

class AppTextStyles {
  //? White text styles
  static TextStyle whiteBoldTextStyle10() => GoogleFonts.roboto(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10.sp);

  //? black text styles
  static TextStyle blackBoldTextStyle24() => GoogleFonts.roboto(
      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24.sp);

  static TextStyle blackTextStyle15() =>
      GoogleFonts.roboto(color: Colors.black, fontSize: 15.sp);
}
