import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/screens/Tabs.dart';
import 'package:flutter_spotify/view/constants/colors.dart';
import 'package:flutter_spotify/view/data/data.dart';
import 'package:flutter_spotify/view/widgets/myText.dart';
import 'package:flutter_spotify/view/widgets/textfield.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/songslist.dart';

class PakkaHitScreen extends StatefulWidget {
  final myImage;
  final singers;
  final myclr;
  const PakkaHitScreen(
      {required this.myImage, required this.singers, this.myclr});

  @override
  State<PakkaHitScreen> createState() => _PakkaHitScreenState();
}

class _PakkaHitScreenState extends State<PakkaHitScreen> {
  ScrollController? scrollController;
  double imagesize = 0.0;
  double initialSize = 240.0;
  double containerHeight = 500;
  double containerInitialHeight = 500;
  double imageOpacity = 1;
  var color = whiteClr;
  @override
  void initState() {
    // TODO: implement initState

    imagesize = initialSize;

    scrollController = ScrollController()
      ..addListener(() {
        print(imagesize);
        imagesize = initialSize - scrollController!.offset;

        // if (imagesize > 0 && imagesize < initialSize) {
        //   setState(() {});
        // }
        if (imagesize < 0) {
          imagesize = 0;
        }
        containerHeight = containerInitialHeight - scrollController!.offset;
        if (containerHeight < 0) {
          containerHeight = 0;
        }
        imageOpacity = imagesize / initialSize;
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: BlackClr,
      body: Stack(
        children: [
          Container(
            height: containerHeight,
            color: widget.myclr,
            width: width,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: imageOpacity.clamp(0, 1.0),
                  child: Container(
                    // width: imagesize,
                    // height: imagesize,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: BlackClr.withOpacity(0.5),
                          offset: Offset(0, 20),
                          blurRadius: 30,
                          spreadRadius: 16)
                    ]),
                    child: Image(
                      image: AssetImage(
                        widget.myImage,
                      ),
                      width: imagesize,
                      height: imagesize,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              controller: scrollController,
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Container(
                      clipBehavior: Clip.none,
                      // height: 500,
                      width: width,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                            BlackClr.withOpacity(0),
                            BlackClr.withOpacity(0),
                            BlackClr.withOpacity(1),
                            BlackClr.withOpacity(1),
                          ])),
                      child: Column(
                        children: [
                          SizedBox(
                            height: initialSize + 32,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.singers,
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: whiteClr,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      FontAwesomeIcons.spotify,
                                      color: primaryCLr,
                                      size: 25,
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    MyText(
                                        txt: "Spotify",
                                        color: whiteClr,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold)
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const MyText(
                                    txt: "31,888,546 plays - 3h 49m",
                                    color: whiteClr,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400),
                                SizedBox(
                                  height: 4,
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              color = color == whiteClr
                                                  ? Colors.red
                                                  : whiteClr;
                                            });
                                          },
                                          child: Icon(
                                            Icons.favorite,
                                            size: 25,
                                            color: color,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        const Icon(
                                          Icons.more_horiz,
                                          size: 25,
                                          color: whiteClr,
                                        ),
                                        SizedBox(
                                          width: width * 0.5,
                                        ),
                                        const Icon(
                                          Icons.shuffle,
                                          size: 40,
                                          color: primaryCLr,
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(color: BlackClr, height: 1000, child: SongsList())
                  ],
                ),
              ),
            ),
          ),
          // app bar
          Positioned(
              child: Container(
            child: Container(
              color: widget.myclr,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                child: SafeArea(
                  child: Container(
                    height: 30,
                    width: width,
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              color: whiteClr,
                            ),
                          ),
                        ),
                        Text(
                          "P L A Y L I S T",
                          style: GoogleFonts.poppins(
                              color: whiteClr,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 65 -
                              containerHeight.clamp(105.0, double.infinity),
                          child: GestureDetector(
                            child: Container(
                              height: 54,
                              width: 54,
                              decoration: const BoxDecoration(
                                  color: primaryCLr, shape: BoxShape.circle),
                              child: const Icon(
                                Icons.play_arrow,
                                size: 30,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
