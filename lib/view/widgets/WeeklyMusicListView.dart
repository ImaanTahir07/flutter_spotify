import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/constants/colors.dart';
import 'package:flutter_spotify/view/widgets/myText.dart';

import '../data/data.dart';

class weeklyMusicListView extends StatefulWidget {
  const weeklyMusicListView({super.key});

  @override
  State<weeklyMusicListView> createState() => _weeklyMusicListViewState();
}

class _weeklyMusicListViewState extends State<weeklyMusicListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: MyText(
                          txt: WeeklyMusicMessages[index]['title'],
                          color: whiteClr,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  height: 150,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
                        WeeklyMusicMessages[index]['color1'],
                        WeeklyMusicMessages[index]['color2']
                      ])),
                ),
                // Container(
                //   height: 150,
                //   // width: 240,
                //   child: Image.asset(
                //     weeklySlider[index]['image'],
                //     fit: BoxFit.cover,
                //   ),
                // ),
                SizedBox(
                  height: 7,
                ),
                MyText(
                    txt: weeklySlider[index]['title'],
                    color: whiteClr,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: WeeklyMusicMessages.length);
  }
}
