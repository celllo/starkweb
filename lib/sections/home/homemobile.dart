import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:budor/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../animations/entranceFader.dart';

class HomeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: 300,
      width: width,
      child: Container(
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
            ]),
      ),
    );
  }
}
