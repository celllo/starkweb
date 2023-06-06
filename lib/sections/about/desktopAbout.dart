import 'package:budor/widget/aboutMeText.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class AboutDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      height: 500,
      color: Color(0xFF1C254E),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/services/insurance.png',
                height: 400,
                fit: BoxFit.contain,
              ),
              Expanded(
                flex: 3,
                child: AboutMeText(
                  fontSize: width <= 1100 ? 14 : 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
