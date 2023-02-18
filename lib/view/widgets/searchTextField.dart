import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 40,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: TextField(
            cursorColor: BlackClr,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: !FocusScope.of(context).isFirstFocus
                      ? BlackClr
                      : primaryCLr,
                  size: 25,
                ),
                filled: true,
                fillColor: whiteClr,
                border: InputBorder.none,
                hintText: "What do you want to listen to?",
                hintStyle: GoogleFonts.poppins(color: BlackClr, fontSize: 14)),
          ),
        ),
      ),
    );
  }
}
