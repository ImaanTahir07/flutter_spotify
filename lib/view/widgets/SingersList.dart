import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/widgets/myText.dart';

import '../constants/colors.dart';
import '../data/data.dart';

class SingersList extends StatefulWidget {
  const SingersList({super.key});

  @override
  State<SingersList> createState() => _SingersListState();
}

class _SingersListState extends State<SingersList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 170,
                width: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: primaryCLr,
                    image: DecorationImage(
                        image: AssetImage(
                      singersList[index]['image'],
                    ))),
              ),
              SizedBox(
                height: 10,
              ),
              MyText(
                  txt: singersList[index]['name'],
                  color: whiteClr,
                  fontSize: 14,
                  fontWeight: FontWeight.normal)
            ],
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: singersList.length);
  }
}
