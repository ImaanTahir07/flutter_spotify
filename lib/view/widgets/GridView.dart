import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/data/data.dart';
import 'package:flutter_spotify/view/screens/pakkaHitScreens.dart';
import 'package:flutter_spotify/view/widgets/myText.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/colors.dart';

class GridViewSongs extends StatefulWidget {
  const GridViewSongs({super.key});

  @override
  State<GridViewSongs> createState() => _GridViewSongsState();
}

class _GridViewSongsState extends State<GridViewSongs> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var titleList = [
      "Hot Hits Pakistan",
      "Kabir Singh",
      "Hindi Mix",
      "Asim Azhar Mix",
      "Osts of Pakistani \n dramas",
      "Atif Aslam Mix"
    ];
    return GridView.builder(
      // physics: NeverScrollableScrollPhysics(),
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 11,
        mainAxisSpacing: 11,
        childAspectRatio: 3 / 1,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PakkaHitScreen(
                      myclr: Colors.red.shade400,
                      myImage: gridviewItems[index]['image'],
                      singers: gridviewItems[index]['title']),
                ));
          },
          child: Container(
            height: 10,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(gridviewItems[index]['image']))),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  MyText(
                      txt: gridviewItems[index]['title'],
                      color: whiteClr,
                      fontSize: 12,
                      fontWeight: FontWeight.w500)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
