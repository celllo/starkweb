import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:budor/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../animations/entranceFader.dart';

class HomeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: 600,
      width: width,
      child: Container(
        margin: EdgeInsets.fromLTRB(width * 0.1, height * 0.2, 0, 0),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                    child: SizedBox(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText('Sigortada Güvenin Adresi',
                          textStyle: GoogleFonts.montserrat(
                            color: kPrimaryColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                          speed: Duration(milliseconds: 300)),
                    ],
                  ),
                )),
              ),
              Expanded(
                  child: Container(
                height: 600,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/services/main.png"),
                        fit: BoxFit.cover)),
              )),
            ]),
      ),
    );
  }
}
