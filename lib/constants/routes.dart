import 'package:budor/sections/kvkk.dart';
import 'package:budor/sections/mainSection.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const kvkk = "/kvkk";
  static const home = "/";

  static List<GetPage> routes = [
    GetPage(
      name: home,
      page: () => MainPage(),
      //transition: Transition.leftToRightWithFade,
      //transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: kvkk,
      page: () => KVKKScreen(),
      //transition: Transition.leftToRightWithFade,
      //transitionDuration: Duration(milliseconds: 500),
    ),

    //   GetPage(
    //   name: user_page,
    //   page: () => UsersScreen(),
    //   middlewares: [GlobalMiddleware()],
    //   //transition: Transition.leftToRightWithFade,
    //   //transitionDuration: Duration(milliseconds: 500),
    // ),

    // GetPage(
    //   name: refList,
    //   page: () => RefListScreen(),
    //   middlewares: [GlobalMiddleware()],
    //   //transition: Transition.leftToRightWithFade,
    //   //transitionDuration: Duration(milliseconds: 500),
    // ),
  ];
}
