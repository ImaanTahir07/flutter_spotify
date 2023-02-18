import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_spotify/view/screens/logInPage.dart';

class textfield extends StatelessWidget {
  final String labeltext;
  final Icon icon;
  const textfield({required this.labeltext, required this.icon});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.77,
      height: height * 0.06,
      child: TextField(
        decoration: InputDecoration(
            labelText: "$labeltext",
            suffixIcon: icon,
            enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.grey.shade300))),
      ),
    );
  }
}
