import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/constants/colors.dart';
import 'package:flutter_spotify/view/widgets/myText.dart';

import '../data/data.dart';

class searchGrid extends StatelessWidget {
  const searchGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: colorTitleList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 11,
          mainAxisSpacing: 11,
          crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
              color: colorTitleList[index]['color'],
              borderRadius: BorderRadius.circular(10)),
          height: 100,
          width: 175,
          child: Center(
            child: MyText(
                txt: colorTitleList[index]['title'],
                color: whiteClr,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        );
      },
    );
  }
}
