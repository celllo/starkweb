import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMeText extends StatelessWidget {
  final TextAlign textAlign;
  final double fontSize;

  const AboutMeText({Key key, this.textAlign, this.fontSize}) : super(key: key);

  TextStyle _textStyle(double fSize, bool bold) {
    return GoogleFonts.montserrat(
      fontSize: fSize ?? 14,
      fontWeight: !bold ? FontWeight.w100 : FontWeight.w400,
      letterSpacing: 1.0,
      height: 2.0,
      color: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(children: [
        TextSpan(
          text:
              "Güveninizi ve huzurunuzu sigortalıyoruz!\nStark Sigorta Şirketi olarak, müşterilerimize en iyi sigorta çözümlerini sunmak için buradayız. Her adımda sizin yanınızda olmayı ve sizi güvence altına almaya odaklanmayı taahhüt ediyoruz. Müşteri memnuniyeti bizim önceliğimizdir. Size özel çözümler sunarak, ihtiyaçlarınızı tam anlamıyla anlamak ve en uygun sigorta poliçesini bulmak için çalışıyoruz. İster araç sigortası, ev sigortası, sağlık sigortası veya iş yeri sigortası olsun, geniş bir sigorta portföyü sunuyoruz. Bireysel veya kurumsal müşteri olsun, herkesin benzersiz gereksinimlerini karşılamak için esnek çözümler sunuyoruz.",
          style: MediaQuery.of(context).size.width < 600
              ? _textStyle(fontSize, false)
              : _textStyle(fontSize + 2, false),
        ),
      ]),
    );
  }
}
