import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/constants/colors.dart';
import 'package:flutter_spotify/view/data/data.dart';
import 'package:flutter_spotify/view/widgets/myText.dart';
import 'package:flutter_spotify/view/widgets/singersListViewLibraryScr.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class libraryScr extends StatefulWidget {
  const libraryScr({super.key});

  @override
  State<libraryScr> createState() => _libraryScrState();
}

class _libraryScrState extends State<libraryScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BlackClr,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: BlackClr,
            expandedHeight: 60,
            pinned: true,
            // floating: false,
            // snap: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.purple.shade200,
                        child: Text(
                          "I",
                          style: TextStyle(color: Colors.purple),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      const MyText(
                          txt: 'Your Library',
                          color: whiteClr,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.menu,
                        size: 20,
                        color: whiteClr,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.search,
                        size: 20,
                        color: whiteClr,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.arrow_outward,
                            size: 15,
                            color: whiteClr,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          MyText(
                              txt: "Recents",
                              color: whiteClr,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ],
                      ),
                      // Icon(
                      //   Icons.menu,
                      //   size: 20,
                      //   color: whiteClr,
                      // )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    // height: 500,
                    // color: primaryCLr,
                    child: singerListView(),
                  ),
                  Container(
                    color: Colors.grey.shade700,
                    height: 0.5,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListTile(
                      title: const MyText(
                          txt: "Add Artist",
                          color: whiteClr,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                      leading: Container(
                        height: 70,
                        width: 60,
                        color: Colors.grey.shade900,
                        child: const Icon(
                          Icons.add,
                          size: 25,
                          color: whiteClr,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          )
        ],
      ),

      // body: Stack(
      //   children: [
      //     SingleChildScrollView(
      //       child: Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //         child: Column(
      //           children: [
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Row(
      //                   children: const [
      //                     Icon(
      //                       Icons.arrow_outward,
      //                       size: 15,
      //                       color: whiteClr,
      //                     ),
      //                     SizedBox(
      //                       width: 10,
      //                     ),
      //                     MyText(
      //                         txt: "Recents",
      //                         color: whiteClr,
      //                         fontSize: 15,
      //                         fontWeight: FontWeight.bold),
      //                   ],
      //                 ),
      //                 Icon(
      //                   Icons.menu,
      //                   size: 20,
      //                   color: whiteClr,
      //                 )
      //               ],
      //             ),
      //             SizedBox(
      //               height: 15,
      //             ),
      //             Container(
      //               // height: 500,
      //               // color: primaryCLr,
      //               child: singerListView(),
      //             ),
      //             Container(
      //               color: Colors.grey.shade700,
      //               height: 0.5,
      //               width: double.infinity,
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.all(16.0),
      //               child: ListTile(
      //                 title: const MyText(
      //                     txt: "Add Artist",
      //                     color: whiteClr,
      //                     fontSize: 17,
      //                     fontWeight: FontWeight.w600),
      //                 leading: Container(
      //                   height: 70,
      //                   width: 60,
      //                   color: Colors.grey.shade900,
      //                   child: const Icon(
      //                     Icons.add,
      //                     size: 25,
      //                     color: whiteClr,
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}
