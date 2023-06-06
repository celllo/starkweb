import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';
import '../../widget/serviceCard.dart';

class ServiceMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            "Ürünlerimiz",
            style: GoogleFonts.montserrat(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color(0xFF69ACD9),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Column(
              children: [
                ServiceCardMobile(
                  cardWidth: 120,
                  cardHeight: 120,
                  serviceIcon: kServicesIcons[0],
                  serviceTitle: kServicesTitles[0],
                  serviceDescription: kServicesDescriptions[0],
                ),
                SizedBox(
                  height: 20,
                ),
                ServiceCardMobile(
                  cardWidth: 120,
                  cardHeight: 120,
                  serviceIcon: kServicesIcons[1],
                  serviceTitle: kServicesTitles[1],
                  serviceDescription: kServicesDescriptions[1],
                ),
                SizedBox(
                  height: 20,
                ),
                ServiceCardMobile(
                  cardWidth: 120,
                  cardHeight: 120,
                  serviceIcon: kServicesIcons[2],
                  serviceTitle: kServicesTitles[2],
                  serviceDescription: kServicesDescriptions[2],
                ),
                SizedBox(
                  height: 20,
                ),
                ServiceCardMobile(
                  cardWidth: 120,
                  cardHeight: 120,
                  serviceIcon: kServicesIcons[3],
                  serviceTitle: kServicesTitles[3],
                  serviceDescription: kServicesDescriptions[0],
                ),
                SizedBox(
                  height: 20,
                ),
                ServiceCardMobile(
                  cardWidth: 120,
                  cardHeight: 120,
                  serviceIcon: kServicesIcons[4],
                  serviceTitle: kServicesTitles[4],
                  serviceDescription: kServicesDescriptions[2],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
