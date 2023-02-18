import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/constants/colors.dart';
import 'package:flutter_spotify/view/widgets/myText.dart';
import 'package:google_fonts/google_fonts.dart';

class moreLikeListTile extends StatelessWidget {
  const moreLikeListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.bolt,
          size: 29,
          color: primaryCLr,
        ),
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: "Weekly",
              style: GoogleFonts.poppins(
                  color: primaryCLr,
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
          TextSpan(
              text: "  Music",
              style: GoogleFonts.poppins(
                  color: whiteClr, fontSize: 16, fontWeight: FontWeight.w600)),
        ])),
      ],
    );
  }
}
