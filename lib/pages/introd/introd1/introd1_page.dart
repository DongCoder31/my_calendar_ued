// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../../../generated/l10n.dart';
import '../../../themes/app_color.dart';
import '../introd2/introd2_page.dart';
// import '../introd2/introd2_page.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreen1State createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  final assets = const $AssetsImagesGen();

  @override
  void initState() {
    super.initState();
    // Wait for 3 seconds and then switch to the next screen
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen2()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 431.57;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double baseHieght = 939.03;
    double femme = MediaQuery.of(context).size.height / baseHieght;

    return Scaffold(
        body: SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          padding:
              EdgeInsets.fromLTRB(15 * fem, 196 * femme, 15 * fem, 0 * fem),
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/backgroud.png'),
              fit: BoxFit.cover,
            ),
            color: DarkTheme.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin:
                    EdgeInsets.fromLTRB(30 * fem, 0 * fem, 0 * fem, 0 * fem),
                child: Text(
                  S.of(context).name_app,
                  style: TextStyle(
                    fontSize: 48 * fem,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                    color: DarkTheme.colorTextBlack,
                    decorationColor: DarkTheme.colorTextBlack,
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(20 * fem, 0 * fem, 0 * fem, 48 * femme),
                child: Text(
                  S.of(context).title_introd1,
                  style: TextStyle(
                    fontSize: 30 * fem,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    color: DarkTheme.colorTextBlack,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Center(
                  child: SizedBox(
                      width: 398 * fem,
                      height: 398 * femme,
                      child: Image.asset('assets/images/splace1.png')),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
