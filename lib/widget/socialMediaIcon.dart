import 'package:budor/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaIconBtn extends StatelessWidget {
  final IconData icon;
  final String socialLink;
  final double height;
  final double horizontalPadding;

  SocialMediaIconBtn(
      {this.icon, this.socialLink, this.height, this.horizontalPadding});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Container(
        color: Colors.transparent,
        child: IconButton(
          icon: Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          iconSize: height,
          onPressed: () => launchURL(socialLink),
        ),
      ),
    );
  }
}
