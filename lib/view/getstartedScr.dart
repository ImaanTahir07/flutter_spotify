import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_spotify/view/logInPage.dart';
import 'package:flutter_spotify/view/widgets/textfield.dart';

class getstartedScr extends StatelessWidget {
  const getstartedScr({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: BlackClr,
        body: Stack(
          children: [
            Container(
              height: height,
              width: double.infinity,
              child: Image.asset(
                "assets/images/sebastiaan-chia-mkxqFOJfIEw-unsplash.jpg",
                fit: BoxFit.cover,
                color: const Color.fromRGBO(255, 255, 255, 0.5),
                colorBlendMode: BlendMode.modulate,
              ),
            ),
            Positioned(
              bottom: 35,
              left: 5,
              right: 5,
              child: MaterialButton(
                height: height * 0.087,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => logInPage(),
                      ));
                },
                color: primaryCLr,
                child: const Text(
                  "GET STARTED",
                  style: TextStyle(
                      color: whiteClr,
                      fontWeight: FontWeight.w600,
                      fontSize: 23),
                ),
              ),
            )
          ],
        ));
  }
}
