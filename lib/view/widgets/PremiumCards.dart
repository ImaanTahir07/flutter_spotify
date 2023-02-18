import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/constants/colors.dart';
import 'package:flutter_spotify/view/widgets/myText.dart';
import 'package:google_fonts/google_fonts.dart';

class PremiumCards extends StatelessWidget {
  final String monthtlyplan;
  final String monthlyHeading;
  final Color color1;
  final Color color2;
  double whiteContainerwidth = 220;
  PremiumCards({
    required this.color1,
    required this.color2,
    required this.monthlyHeading,
    required this.monthtlyplan,
    required this.whiteContainerwidth,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: 210,
      width: width,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 25),
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: whiteContainerwidth,
                  decoration: BoxDecoration(
                      color: whiteClr.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(7)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                    child: MyText(
                        txt: monthtlyplan,
                        color: BlackClr,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              MyText(
                  txt: monthlyHeading,
                  color: whiteClr,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: whiteClr,
                    fontSize: 11,
                  ),
                ),
              )
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
