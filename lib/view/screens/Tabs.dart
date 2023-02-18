import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/screens/HomeScr.dart';
import 'package:flutter_spotify/view/constants/colors.dart';
import 'package:flutter_spotify/view/screens/libraryScr.dart';
import 'package:flutter_spotify/view/screens/premiumScr.dart';
import 'package:flutter_spotify/view/screens/search_scr.dart';
import 'package:flutter_spotify/view/widgets/myText.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsScr extends StatefulWidget {
  const TabsScr({super.key});

  @override
  State<TabsScr> createState() => _TabsScrState();
}

int myIndex = 0;
PageController pageController = PageController();

class _TabsScrState extends State<TabsScr> {
  ontapped(int index) {
    setState(() {
      myIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BlackClr,
      bottomNavigationBar: Theme(
        data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent),
        child: BottomNavigationBar(
            // mouseCursor: SystemMouseCursors.none,
            selectedLabelStyle: GoogleFonts.poppins(),
            unselectedLabelStyle: GoogleFonts.poppins(),
            onTap: ontapped,
            currentIndex: myIndex,
            selectedItemColor: primaryCLr,
            backgroundColor: BlackClr,
            unselectedItemColor: Colors.grey.shade800,
            landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.library_add), label: "Your Library"),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.spotify), label: "Premium"),
            ]),
      ),
      body: SafeArea(
          child: PageView(
        controller: pageController,
        children: [HomeScr(), SearchScr(), libraryScr(), PremiumScr()],
      )),
    );
  }
}
