import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

// Colors
Color kPrimaryColor = Color(0xFF1C254E);

// Social Media
const kSocialIcons = [
  FontAwesomeIcons.facebookF,
  FontAwesomeIcons.instagram,
];
const kSocialLinks = [
  "https://www.facebook.com/starksigorta/",
  "https://www.instagram.com/starksigorta/",
];

// URL Launcher
void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

final kTools1 = [];

// services
final kServicesIcons = [
  FontAwesomeIcons.car,
  Icons.health_and_safety,
  Icons.home,
  FontAwesomeIcons.users,
  FontAwesomeIcons.plane
];

final kServicesTitles = [
  "Araç Sigortaları",
  "Özel Sağlık Sigortaları",
  "Ev ve İşyeri Sigortaları",
  "Bireysel Emeklilik Planları",
  "Seyehat Sağlık Sigortaları"
];

final kServicesDescriptions = [
  "يُتاح لك اليوم الاستثمار محليًا وعالميًا بأسهل الطرق وأسرعها بإتمام العملية بطريقة آلية من خلال تسخير التقنية.",
  "يحافظ الاستثمار على قيمة أموالك الفعلية من التضخم وينميها بعد سنوات لتزداد قيمتها.",
  "يضمن لك الاستثمار طويل المدى حريتـــــــــك المالية المستقبلية بعد التقاعد أو عند قرارك بالعمل على تحقيق أحلامك.",
];
