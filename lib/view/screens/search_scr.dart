import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/constants/colors.dart';
import 'package:flutter_spotify/view/widgets/myText.dart';
import 'package:flutter_spotify/view/widgets/searchGrid.dart';
import 'package:flutter_spotify/view/widgets/searchTextField.dart';
import 'package:flutter_spotify/view/widgets/searchTitleRow.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/data.dart';
import '../widgets/choiceChips.dart';

class SearchScr extends StatefulWidget {
  const SearchScr({super.key});

  @override
  State<SearchScr> createState() => _SearchScrState();
}

class _SearchScrState extends State<SearchScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BlackClr,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                  padding: EdgeInsets.only(
                    top: 25,
                  ),
                  child: SearchTitleRow()),
              const SizedBox(
                height: 15,
              ),
              const SearchTextField(),
              SizedBox(
                height: 15,
              ),
              Wrap(
                spacing: 5,
                runSpacing: 2,
                children: [
                  ChoiceChips(
                    chipText: "new releases",
                    selectedColor: Colors.pink,
                  ),
                  ChoiceChips(
                    chipText: "hip hop",
                    selectedColor: Colors.orange.shade800,
                  ),
                  ChoiceChips(
                    chipText: "classic",
                    selectedColor: Colors.blue.shade600,
                  ),
                  ChoiceChips(
                    chipText: "justin bieber",
                    selectedColor: Colors.red,
                  ),
                  ChoiceChips(
                    chipText: "shadi package",
                    selectedColor: Colors.purple,
                  ),
                  ChoiceChips(
                    chipText: "workout sessions",
                    selectedColor: Colors.green.shade700,
                  ),
                  ChoiceChips(
                    chipText: "aesthetics",
                    selectedColor: Colors.indigoAccent.shade700,
                  ),
                  ChoiceChips(
                    chipText: "rovalio",
                    selectedColor: Colors.brown.shade700,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const MyText(
                  txt: "Browse All",
                  color: whiteClr,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
              const SizedBox(
                height: 15,
              ),
              Container(
                  // height: 400,
                  width: double.infinity,
                  // color: primaryCLr,
                  child: const searchGrid()),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        )),
      ),
    );
  }
}
