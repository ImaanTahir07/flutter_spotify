import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/screens/pakkaHitScreens.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../data/data.dart';

class PakkaHitHaiList extends StatefulWidget {
  const PakkaHitHaiList({super.key});

  @override
  State<PakkaHitHaiList> createState() => _PakkaHitHaiListState();
}

class _PakkaHitHaiListState extends State<PakkaHitHaiList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      // shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: pakkaHithaiItems.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return PakkaHitScreen(
                    myclr: Colors.teal.shade700,
                    myImage: pakkaHithaiItems[index]['image'],
                    singers: pakkaHithaiItems[index]['singers'],
                  );
                },
              ));
            },
            child: Column(
              children: [
                Container(
                  height: 175,
                  // width: 175,
                  // decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //         image: AssetImage(pakkaHithaiItems[index]['image']))),
                  child: Image.asset(pakkaHithaiItems[index]['image']),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  // height: 60,
                  width: 175,
                  child: Text(
                    pakkaHithaiItems[index]['singers'],
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(color: whiteClr, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }
}
