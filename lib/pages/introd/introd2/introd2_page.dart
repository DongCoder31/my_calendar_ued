// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../../themes/app_color.dart';
import '../introd3/introd3_page.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreen1State createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen2> {
  @override
  void initState() {
    super.initState();
    // Wait for 3 seconds and then switch to the next screen
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen3()),
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
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // iphone13promax2tYn (1:16)
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/backgroud.png'),
              fit: BoxFit.cover,
            ),
            color: DarkTheme.white,
          ),
          child: Stack(
            children: [
              Positioned(
                // wegatitSCv (2:2)
                left: 19 * fem,
                top: 535 * femme,
                child: Align(
                  child: SizedBox(
                    width: 158 * fem,
                    height: 33 * femme,
                    child: Text(
                      S.of(context).descr_introd2_2,
                      style: TextStyle(
                        fontFamily: 'IBM Plex Serif',
                        fontSize: 25 * fem,
                        fontWeight: FontWeight.w400,
                        height: 1.3 * femme / fem,
                        color: DarkTheme.colorTextBlack,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 16 * fem,
                top: 73 * femme,
                child: SizedBox(
                  width: 396 * fem,
                  height: 138 * femme,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 389 * fem,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '${S.of(context).title_introd2_1_1} ',
                                style: TextStyle(
                                  fontFamily: 'IBM Plex Serif',
                                  fontSize: 35 * femme,
                                  fontWeight: FontWeight.w700,
                                  height: 1.3 * femme / fem,
                                  color: DarkTheme.colorTextBlack,
                                ),
                              ),
                              TextSpan(
                                text: S.of(context).title_introd2_1_2,
                                style: TextStyle(
                                  fontFamily: 'IBM Plex Serif',
                                  fontSize: 35 * femme,
                                  fontWeight: FontWeight.w700,
                                  height: 1.3 * femme / fem,
                                  decoration: TextDecoration.underline,
                                  color: DarkTheme.red,
                                  decorationColor: DarkTheme.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 16 * fem,
                top: 271 * fem,
                child: Align(
                  child: SizedBox(
                    width: 387 * fem,
                    height: 132 * femme,
                    child: Text(
                      S.of(context).descr_introd2_1,
                      style: TextStyle(
                        fontFamily: 'IBM Plex Serif',
                        fontSize: 25 * fem,
                        color: DarkTheme.colorTextBlack,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 38 * fem,
                top: 463 * femme,
                child: Align(
                  child: SizedBox(
                      width: 349 * fem,
                      height: 349 * femme,
                      child: Image.asset('assets/images/splace2.png')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
