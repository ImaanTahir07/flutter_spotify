import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/screens/MusicPlayerScreen.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../data/data.dart';
import 'myText.dart';

class SongsList extends StatefulWidget {
  const SongsList({super.key});

  @override
  State<SongsList> createState() => _SongsListState();
}

class _SongsListState extends State<SongsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Get.bottomSheet(

              //   MusicPlayerScreen());
              Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        MusicPlayerScreen(
                            singername: songsList[index]['subtitle'],
                            image: songsList[index]['image'],
                            songname: songsList[index]['title']),
                  ));
            },
            child: ListTile(
              trailing: const Icon(
                Icons.more_horiz,
                color: whiteClr,
              ),
              leading: Container(
                  height: 70,
                  width: 50,
                  child: Image.asset(songsList[index]['image'])),
              title: MyText(
                  txt: songsList[index]['title'],
                  color: whiteClr,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
              subtitle: MyText(
                  txt: songsList[index]['subtitle'],
                  color: Colors.grey.shade600,
                  fontSize: 11,
                  fontWeight: FontWeight.normal),
            ),
          );
        },
        separatorBuilder: (context, index) => Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey.shade900,
            ),
        itemCount: songsList.length);
  }
}
