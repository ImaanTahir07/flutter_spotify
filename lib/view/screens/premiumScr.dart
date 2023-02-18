import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/constants/colors.dart';
import 'package:flutter_spotify/view/data/data.dart';
import 'package:flutter_spotify/view/widgets/PremiumCards.dart';
import 'package:flutter_spotify/view/widgets/SpotifyPremiumPlanTile.dart';
import 'package:flutter_spotify/view/widgets/greengreySlider.dart';
import 'package:flutter_spotify/view/widgets/myText.dart';
import 'package:google_fonts/google_fonts.dart';

class PremiumScr extends StatefulWidget {
  const PremiumScr({super.key});

  @override
  State<PremiumScr> createState() => _PremiumScrState();
}

late final PageController pageController =
    PageController(initialPage: 0, viewportFraction: 0.85);
var pageNo = 0;

class _PremiumScrState extends State<PremiumScr> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: BlackClr,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              "3 months of Premium for the price of 1",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  color: whiteClr, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            // GreenGreySlider(),
            Column(
              children: [
                SizedBox(
                  height: 200,
                  child: Expanded(
                    child: PageView.builder(
                      onPageChanged: (value) {
                        setState(() {
                          pageNo = value;
                        });
                      },
                      itemCount: pageviewContent.length,
                      controller: pageController,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      MyText(
                                          txt: "FREE",
                                          color: whiteClr,
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MyText(
                                            txt: pageviewContent[index]
                                                ['greyone'],
                                            color: whiteClr,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Color(0xFF414345).withOpacity(0.5),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10))),
                                height: 140,
                                width: 140,
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      MyText(
                                          txt: "PREMIUM",
                                          color: whiteClr,
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: MyText(
                                              txt: pageviewContent[index]
                                                  ['greenone'],
                                              color: whiteClr,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          primaryCLr.withOpacity(0.5),
                                          Colors.teal.shade800
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10))),
                              ),
                            ],
                          ),
                          height: 150,
                          // width: 120,

                          decoration: BoxDecoration(
                              // color: Colors.pink,
                              borderRadius: BorderRadius.circular(10)),
                          margin: const EdgeInsets.only(
                              right: 10, left: 10, top: 36, bottom: 12),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        4,
                        (index) => Container(
                              width: 8,
                              margin: EdgeInsets.all(4),
                              child: Icon(Icons.circle,
                                  size: 8,
                                  color: pageNo == index
                                      ? whiteClr
                                      : Colors.grey.shade700),
                            )))
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: MyText(
                  txt:
                      "You can't upgrade to Premium in the app. We know, it's not ideal",
                  color: whiteClr,
                  fontSize: 11.5,
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 13,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: SpotifyPremiumPlanTile()),

            SizedBox(
              height: 12,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(children: [
                  PremiumCards(
                      whiteContainerwidth: 200,
                      color1: primaryCLr.withOpacity(0.5),
                      color2: Colors.teal.shade800,
                      monthlyHeading: "Premium Individual",
                      monthtlyplan: "3 MONTHS OF PREMIUM"),
                  const SizedBox(
                    height: 13,
                  ),
                  PremiumCards(
                      whiteContainerwidth: 150,
                      color1: Color(0xFFFF512F),
                      color2: Color(0xFFF09819),
                      monthlyHeading: "Premium Student",
                      monthtlyplan: "FREE FOR 1 MONTH"),
                  const SizedBox(
                    height: 13,
                  ),
                  PremiumCards(
                      whiteContainerwidth: 150,
                      color1: Color(0xFF2b5876),
                      color2: Color(0xFF4e4376),
                      monthlyHeading: "Premium Duo",
                      monthtlyplan: "FREE FOR 1 MONTH"),
                  const SizedBox(
                    height: 13,
                  ),
                  PremiumCards(
                      whiteContainerwidth: 150,
                      color1: Color(0xFF753a88),
                      color2: Color(0xFFcc2b5e),
                      monthlyHeading: "Premium Family",
                      monthtlyplan: "FREE FOR 1 MONTH"),
                ])),
          ],
        ),
      ),
    );
  }
}
