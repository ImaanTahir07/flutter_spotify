import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spotify/view/widgets/GridView.dart';
import 'package:flutter_spotify/view/widgets/IconsList.dart';
import 'package:flutter_spotify/view/widgets/SingersList.dart';
import 'package:flutter_spotify/view/widgets/WeeklyMusicListView.dart';
import 'package:flutter_spotify/view/widgets/moreLikeListTile.dart';
import 'package:flutter_spotify/view/widgets/myText.dart';
import 'package:flutter_spotify/view/widgets/pakkaHitHyList.dart';
import 'package:flutter_spotify/view/widgets/titleWidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class HomeScr extends StatefulWidget {
  const HomeScr({super.key});

  @override
  State<HomeScr> createState() => _HomeScrState();
}

class _HomeScrState extends State<HomeScr> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: BlackClr,
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TitleWidget(title: "Good Morning!"),
                        IconsList()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(
                    height: height * 0.28,
                    width: width,
                    child: GridViewSongs(),
                  ),
                  moreLikeListTile(),
                  Container(
                    height: 200,
                    width: width,
                    // color: Colors.green,
                    child: weeklyMusicListView(),
                  ),
                  ListTile(
                    leading: Container(
                        height: 70,
                        width: 50,
                        child: Image.asset("assets/images/topHit.png")),
                    title: MyText(
                        txt: "More Like",
                        color: Colors.grey.shade300,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                    subtitle: const MyText(
                        txt: "Hot Hits Pakistan",
                        color: whiteClr,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 230,
                    width: width,
                    child: PakkaHitHaiList(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 8),
                    child: MyText(
                        txt: "Your Favorite Artists",
                        color: whiteClr,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 235,
                    width: width,
                    child: SingersList(),
                  )
                ],
              ),
            ),
          ],
        ));
    // ;
  }
}
