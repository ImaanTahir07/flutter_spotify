import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/constants/colors.dart';
import 'package:flutter_spotify/view/widgets/myText.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return MyText(
        txt: title, color: whiteClr, fontSize: 24, fontWeight: FontWeight.bold);
  }
}
