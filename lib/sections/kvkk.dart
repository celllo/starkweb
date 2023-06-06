import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart' show rootBundle;

class KVKKScreen extends StatelessWidget {
  const KVKKScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    KvkkControler kvkkControler = Get.put(KvkkControler());

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GetBuilder<KvkkControler>(builder: (context) {
            return kvkkControler.loading
                ? Center(
                    child: CircularProgressIndicator(
                    color: Colors.black,
                  ))
                : SingleChildScrollView(
                    child: Column(
                    children: [
                      Text(
                        "Gizlilik Sözleşmesi",
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        kvkkControler.data,
                        style: GoogleFonts.montserrat(
                            color: Colors.black, fontSize: 16),
                      )
                    ],
                  ));
          }),
        ),
      ),
    );
  }
}

class KvkkControler extends GetxController {
  String data;
  bool loading = true;
  @override
  onInit() async {
    loading = true;
    data = await rootBundle.loadString('assets/gizlilik.txt');
    loading = false;
    update();

    super.onInit();
  }
}
