import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/constants/colors.dart';
import 'package:flutter_spotify/view/widgets/myText.dart';

class SpotifyPremiumPlanTile extends StatelessWidget {
  const SpotifyPremiumPlanTile({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 25, right: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText(
                txt: "Spotify Free",
                color: whiteClr,
                fontSize: 16,
                fontWeight: FontWeight.bold),
            MyText(
                txt: "CURRENT PLAN",
                color: whiteClr,
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ],
        ),
      ),
      height: 60,
      width: width,
      decoration: BoxDecoration(
        color: Color(0xFF414345).withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
