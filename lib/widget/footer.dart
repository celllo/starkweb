import 'package:budor/constants/routes.dart';
import 'package:budor/sections/mainSection.dart';
import 'package:budor/widget/arrowOnTop.dart';
import 'package:budor/widget/socialMediaIcon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: 300,
      width: width,
      color: Color(0xFF2B3B7C),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 36, right: 36),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            for (int i = 0; i < kSocialIcons.length; i++)
                              SocialMediaIconBtn(
                                icon: kSocialIcons[i],
                                height: height * 0.035,
                                socialLink: kSocialLinks[i],
                                horizontalPadding: width * 0.005,
                              ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text(
                          "info@sigortadestek.com",
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "0(541) 488 48 92",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w100),
                  ),
                  Text(
                    "Girne Mahallesi Mustafa Kemal Caddesi No:92 \nAdıyaman/Kahta",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w100),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () async {
                      Get.toNamed(
                        AppRoutes.kvkk,
                      );
                    },
                    child: Text(
                      "Gizlilik Sözleşmesi",
                      textAlign: TextAlign.justify,
                      style:
                          GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ]),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: SizedBox(
              height: 45,
              width: 45,
              child: ArrowOnTop(
                onPressed: () => itemScrollController.scrollTo(
                    index: 0, duration: Duration(seconds: 1)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
