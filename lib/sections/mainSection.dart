// ignore: avoid_web_libraries_in_flutter
import 'package:budor/sections/services/services.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../animations/entranceFader.dart';
import '../constants.dart';
import '../widget/arrowOnTop.dart';
import '../widget/footer.dart';
import 'about/about.dart';
import 'home/home.dart';
import 'navBar/navBarLogo.dart';

ScrollController _scrollController =
    ScrollController(initialScrollOffset: 25.0);
ItemScrollController itemScrollController = ItemScrollController();
ItemPositionsListener _itemPositionListener = ItemPositionsListener.create();

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<String> _sectionsName = [];

  void _scroll(int i) {
    itemScrollController.scrollTo(index: i, duration: Duration(seconds: 1));
  }

  Widget sectionWidget(int i) {
    if (i == 0) {
      return HomePage();
    } else if (i == 1) {
      return About();
    } else if (i == 2) {
      return Services();
    } else if (i == 3) {
      return Footer();
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: _appBarTabDesktop(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: RawScrollbar(
          controller: _scrollController,
          thumbColor: kPrimaryColor,
          thickness: 3.0,
          child: ScrollablePositionedList.builder(
            itemScrollController: itemScrollController,
            itemPositionsListener: _itemPositionListener,
            itemCount: 4,
            itemBuilder: (context, index) {
              return sectionWidget(index);
            },
          ),
        ),
      ),
    );
  }

  Widget _appBarActions(String childText, int index) {
    return EntranceFader(
      offset: Offset(0, -20),
      delay: Duration(seconds: 2),
      duration: Duration(seconds: 1),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          onPressed: () => _scroll(index),
          child: Text(
            childText,
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _appBarTabDesktop() {
    return AppBar(
      toolbarHeight: 100,
      elevation: 0.0,
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          EntranceFader(
              duration: Duration(seconds: 1),
              offset: Offset(0, -20),
              delay: Duration(seconds: 2),
              child: GestureDetector(
                onTap: () {
                  _scroll(0);
                },
                child: Text(
                  "Stark Sigorta",
                  style: GoogleFonts.montserrat(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Row(
          //     children: [
          //        EntranceFader(
          //     duration: Duration(seconds: 1),
          //     offset: Offset(0, -20),
          //     delay: Duration(seconds: 3),
          //     child: Text("Stark Sigorta",style: GoogleFonts.montserrat(
          //             color: kPrimaryColor,
          //             fontWeight: FontWeight.bold,
          //           ),)),
          //       MaterialButton(
          //         shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(5.0),
          //             side: BorderSide(color: Color(0xFFEFDA74))),
          //         onPressed: () {},
          //         child: Text(
          //           "Hakkımızda",
          //           style: GoogleFonts.montserrat(
          //             color: kPrimaryColor,
          //             fontWeight: FontWeight.bold,
          //           ),
          //         ),
          //       ),
          //       // Padding(
          //       //   padding: const EdgeInsets.symmetric(horizontal: 16),
          //       //   child: MaterialButton(
          //       //     color: Color(0xFFEFDA74),
          //       //     shape: RoundedRectangleBorder(
          //       //         borderRadius: BorderRadius.circular(5.0),
          //       //         side: BorderSide(color: Color(0xFFEFDA74))),
          //       //     onPressed: () {},
          //       //     child: Text(
          //       //       "xax",
          //       //       style: GoogleFonts.montserrat(
          //       //         color: kPrimaryColor,
          //       //         fontWeight: FontWeight.bold,
          //       //       ),
          //       //     ),
          //       //   ),
          //       // ),
          //     ],
          //   ),
          // ),
          for (int i = 0; i < _sectionsName.length; i++)
            _appBarActions(
              _sectionsName[i],
              i,
            ),
        ],
      ),
    );
  }
}
