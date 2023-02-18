// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/constants/colors.dart';
import 'package:flutter_spotify/view/widgets/myText.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:typed_data';

import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

// import 'package:just_audio/just_audio.dart';

class MusicPlayerScreen extends StatefulWidget {
  var image;
  var songname;
  var singername;
  MusicPlayerScreen(
      {required this.image, required this.songname, required this.singername});

  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}

var myIcon = Icons.favorite_border;

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  // late AudioPlayer _player;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   // _player = AudioPlayer()..setAsset('assets/sound/music.mp3');
  // }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   _player.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BlackClr,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: ShaderMask(
                shaderCallback: (bounds) {
                  return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.pink.withOpacity(0.3),
                        BlackClr.withOpacity(0.7)
                      ]).createShader(bounds);
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.purple.shade400,
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              CupertinoIcons.arrow_down,
                              size: 25,
                              color: whiteClr,
                            ),
                          ),
                          MyText(
                              txt: "Recent Searches",
                              color: whiteClr,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                          Icon(
                            Icons.more_horiz,
                            size: 25,
                            color: whiteClr,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 32,
                              color: BlackClr.withOpacity(0.3),
                              // blurStyle: BlurStyle.normal,
                              spreadRadius: 32)
                        ]),
                        child: Image.asset(widget.image)),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: ListTile(
                        trailing: GestureDetector(
                          onTap: () {
                            setState(() {
                              myIcon = myIcon == Icons.favorite_border
                                  ? Icons.favorite
                                  : Icons.favorite_border;
                            });
                          },
                          child: Icon(
                            myIcon,
                            size: 28,
                            color: whiteClr,
                          ),
                        ),
                        title: MyText(
                            txt: widget.songname,
                            color: whiteClr,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                        subtitle: MyText(
                            txt: widget.singername,
                            color: whiteClr,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyText(
                              txt: "1:35",
                              color: whiteClr,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                          SizedBox(
                            width: 275,
                            child: SliderTheme(
                              data: SliderThemeData(
                                  thumbColor: Colors.transparent,
                                  thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 0.0)),
                              child: Slider(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                min: 0,
                                max: 100,
                                value: 50,
                                activeColor: whiteClr,
                                inactiveColor: whiteClr.withOpacity(0.2),
                                onChanged: (value) {},
                              ),
                            ),
                          ),
                          MyText(
                              txt: "2:57",
                              color: whiteClr,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.shuffle,
                          size: 40,
                          color: primaryCLr,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Controls(player: _player)
                            Icon(
                              Icons.fast_rewind,
                              size: 45,
                              color: whiteClr,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: whiteClr.withOpacity(0.5),
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Icon(
                                  Icons.play_arrow,
                                  size: 40,
                                  color: BlackClr,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.fast_rewind,
                              size: 45,
                              color: whiteClr,
                            ),
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: whiteClr, width: 2)),
                          child: Icon(
                            FontAwesomeIcons.minus,
                            color: whiteClr,
                            size: 15,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: primaryCLr.withOpacity(0.4),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Lyrics",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ReadMoreText(
                                  "Kaise kahu mai tumsa koi Koi na hai Mai tere aas paas rahu Dil veeraan hai Jazbaat mere sabhi Tu hi jaane Jitna bhi dekhu Dil bhar na paaye Kaisa sama hai Hum tum yahan hain Zaahir karu kya hain jo Mere iraaday Tere hawaale mai Kisi bahaane Zaahir karu kya hain jo Mere iraaday Mere, mere iraaday",
                                  style: GoogleFonts.poppins(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  trimLines: 4,
                                  textAlign: TextAlign.center,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: "show more",
                                  trimExpandedText: "..show less",
                                  moreStyle: TextStyle(
                                      fontSize: 12,
                                      color: whiteClr.withOpacity(0.4)),
                                  lessStyle: TextStyle(
                                      fontSize: 12,
                                      color: whiteClr.withOpacity(0.4)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class Controls extends StatelessWidget {
//   final AudioPlayer player;
//   const Controls({required this.player});

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<PlayerState>(
//       stream: player.playerStateStream,
//       builder: (context, snapshot) {
//         final playerState = snapshot.data;
//         final processingState = playerState?.processingState;
//         final playing = playerState?.playing;
//         if (!(playing ?? false)) {
//           return IconButton(
//               onPressed: player.play,
//               icon: Icon(
//                 Icons.play_arrow,
//                 size: 25,
//                 color: whiteClr,
//               ));
//         } else if (processingState != ProcessingState.completed) {
//           return IconButton(
//               onPressed: player.pause,
//               icon: Icon(
//                 Icons.pause,
//                 size: 25,
//                 color: whiteClr,
//               ));
//         }
//         return Icon(
//           Icons.play_arrow,
//           size: 25,
//           color: whiteClr,
//         );
//       },
//     );
//   }
// }
