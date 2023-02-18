import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/constants/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconsList extends StatelessWidget {
  const IconsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Icon(
          Icons.notifications_none,
          size: 30,
          color: whiteClr,
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          FontAwesomeIcons.clock,
          size: 25,
          color: whiteClr,
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.settings,
          size: 30,
          color: whiteClr,
        ),
        SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
