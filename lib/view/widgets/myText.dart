import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  final String txt;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;

  const MyText(
      {required this.txt,
      required this.color,
      required this.fontSize,
      required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: GoogleFonts.poppins(
          // fontFamily: "GothamMedium",
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: color),
    );
  }
}
