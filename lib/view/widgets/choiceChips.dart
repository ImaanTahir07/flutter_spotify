import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/constants/colors.dart';
import 'package:flutter_spotify/view/widgets/myText.dart';

class ChoiceChips extends StatefulWidget {
  var chipText;
  var selectedColor;
  ChoiceChips({required this.chipText, required this.selectedColor});

  @override
  State<ChoiceChips> createState() => _ChoiceChipsState();
}

class _ChoiceChipsState extends State<ChoiceChips> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      backgroundColor: Colors.grey.shade800,
      label: MyText(
          txt: widget.chipText,
          color: whiteClr,
          fontSize: 12,
          fontWeight: FontWeight.normal),
      selected: isSelected,
      selectedColor: widget.selectedColor,
      onSelected: (value) {
        setState(() {
          isSelected = value;
        });
      },
    );
  }
}
