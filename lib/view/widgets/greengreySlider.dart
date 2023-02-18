import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/constants/colors.dart';
import 'package:flutter_spotify/view/data/data.dart';
import 'package:flutter_spotify/view/widgets/myText.dart';

class GreenGreySlider extends StatefulWidget {
  const GreenGreySlider({super.key});

  @override
  State<GreenGreySlider> createState() => _GreenGreySliderState();
}

late final PageController pageController;
var pageNo = 0;

class _GreenGreySliderState extends State<GreenGreySlider> {
  void initState() {
    // TODO: implement initState
    pageController = PageController(initialPage: 0, viewportFraction: 0.85);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: Expanded(
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  pageNo = value;
                });
              },
              itemCount: pageviewContent.length,
              controller: pageController,
              itemBuilder: (context, index) {
                return Container(
                  child: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              MyText(
                                  txt: "FREE",
                                  color: whiteClr,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: MyText(
                                    txt: pageviewContent[index]['greyone'],
                                    color: whiteClr,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xFF414345).withOpacity(0.5),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        height: 140,
                        width: 140,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              MyText(
                                  txt: "PREMIUM",
                                  color: whiteClr,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                              SizedBox(
                                height: 20,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: MyText(
                                      txt: pageviewContent[index]['greenone'],
                                      color: whiteClr,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  primaryCLr.withOpacity(0.5),
                                  Colors.teal.shade800
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                      ),
                    ],
                  ),
                  height: 150,
                  // width: 120,

                  decoration: BoxDecoration(
                      // color: Colors.pink,
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.only(
                      right: 10, left: 10, top: 36, bottom: 12),
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                4,
                (index) => Container(
                      width: 8,
                      margin: EdgeInsets.all(4),
                      child: Icon(Icons.circle,
                          size: 8,
                          color: pageNo == index
                              ? whiteClr
                              : Colors.grey.shade700),
                    )))
      ],
    );
  }
}
