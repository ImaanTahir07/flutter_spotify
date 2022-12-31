import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_spotify/view/widgets/textfield.dart';

class logInPage extends StatefulWidget {
  const logInPage({super.key});

  @override
  State<logInPage> createState() => _logInPageState();
}

class _logInPageState extends State<logInPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: BlackClr,
      body: SizedBox(
        height: height,
        child: Stack(
          children: [
            Container(
              height: height / 2,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: primaryCLr,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: height * 0.1,
                      child: Image.asset("assets/images/logo.png")),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Millions of songs,  free on spotify",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: whiteClr),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: height,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        height: height / 1.8,
                        decoration: const BoxDecoration(
                            color: whiteClr,
                            borderRadius:
                                BorderRadius.all(Radius.circular(32))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 13, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const Center(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Login Account",
                                    style: TextStyle(
                                        color: BlackClr,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const textfield(
                                  labeltext: "Email or Username",
                                  icon: Icon(CupertinoIcons.envelope)),
                              const SizedBox(
                                height: 10,
                              ),
                              const textfield(
                                  labeltext: "Password",
                                  icon: Icon(CupertinoIcons.eye)),
                              SwitchListTile.adaptive(
                                activeColor: primaryCLr,
                                value: true,
                                onChanged: (value) {},
                                title: Text(
                                  "Remember me",
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              MaterialButton(
                                height: height * 0.056,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                onPressed: () {},
                                color: primaryCLr,
                                child: const Text(
                                  "LOG IN",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: whiteClr),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    child: Container(
                                      height: 1,
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                  Text(
                                    " or ",
                                    style: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Flexible(
                                    child: Container(
                                      height: 1,
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: height * 0.04,
                                    child:
                                        Image.asset("assets/images/google.png"),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  SizedBox(
                                    height: height * 0.045,
                                    child: Image.asset(
                                        "assets/images/facebook.png"),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Text(
                                  "forget password?",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: RichText(
                        text: const TextSpan(
                            text: "Don't have an account? ",
                            style: TextStyle(
                                color: whiteClr,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                            children: [
                              TextSpan(
                                  text: "Sign up now",
                                  style: TextStyle(
                                      color: primaryCLr,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15))
                            ]),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
