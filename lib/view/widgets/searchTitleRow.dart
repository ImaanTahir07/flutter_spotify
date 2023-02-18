import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/constants/colors.dart';
import 'package:flutter_spotify/view/widgets/myText.dart';

class SearchTitleRow extends StatelessWidget {
  const SearchTitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        MyText(
            txt: "Search",
            color: whiteClr,
            fontSize: 26,
            fontWeight: FontWeight.bold),
        Icon(
          Icons.more_horiz,
          color: whiteClr,
          size: 35,
        )
      ],
    );
  }
}
