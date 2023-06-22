import 'package:calendar_flutter_app/themes/app_color.dart';
import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../../../generated/l10n.dart';

class SplashScreen3 extends StatelessWidget {
  const SplashScreen3({super.key});

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
                left: 39 * fem,
                top: 36 * femme,
                child: Align(
                  child: SizedBox(
                    width: 380 * fem,
                    height: 76 * femme,
                    child: Text(
                      S.of(context).title_introd3_1,
                      style: TextStyle(
                        fontFamily: 'IBM Plex Serif',
                        fontSize: 35 * femme,
                        fontWeight: FontWeight.w700,
                        height: 1.3 * femme / fem,
                        decoration: TextDecoration.underline,
                        color: DarkTheme.colorTextBlack,
                        decorationColor: DarkTheme.colorTextBlack,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 57 * fem,
                top: 145 * femme,
                child: Align(
                  child: SizedBox(
                      width: 308 * fem,
                      height: 308 * femme,
                      child: Image.asset('assets/images/splace3.png')),
                ),
              ),
              Positioned(
                left: 47 * fem,
                top: 517 * femme,
                child: Align(
                  child: SizedBox(
                    width: 294 * fem,
                    height: 50 * femme,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '${S.of(context).descr_introd3_1_1} ',
                            style: TextStyle(
                              fontFamily: 'IBM Plex Serif',
                              fontSize: 19 * femme,
                              fontWeight: FontWeight.w700,
                              color: DarkTheme.colorTextBlack,
                            ),
                          ),
                          TextSpan(
                            text: S.of(context).descr_introd3_1_2,
                            style: TextStyle(
                              fontFamily: 'IBM Plex Serif',
                              fontSize: 19 * femme,
                              fontWeight: FontWeight.w400,
                              color: DarkTheme.colorTextBlack,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                //
                left: 47 * fem,
                top: 608 * femme,
                child: Align(
                  child: SizedBox(
                    width: 300 * fem,
                    height: 50 * femme,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '${S.of(context).descr_introd3_2_1} ',
                            style: TextStyle(
                              fontFamily: 'IBM Plex Serif',
                              fontSize: 19 * femme,
                              fontWeight: FontWeight.w700,
                              color: DarkTheme.colorTextBlack,
                            ),
                          ),
                          TextSpan(
                            text: S.of(context).descr_introd3_2_2,
                            style: TextStyle(
                              fontFamily: 'IBM Plex Serif',
                              fontSize: 19 * femme,
                              fontWeight: FontWeight.w400,
                              color: DarkTheme.colorTextBlack,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 50 * fem,
                top: 689 * femme,
                child: Align(
                  child: SizedBox(
                    width: 317 * fem,
                    height: 50 * femme,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: S.of(context).descr_introd3_3_1,
                            style: TextStyle(
                              fontFamily: 'IBM Plex Serif',
                              fontSize: 19 * femme,
                              fontWeight: FontWeight.w700,
                              color: DarkTheme.colorTextBlack,
                            ),
                          ),
                          TextSpan(
                            text: S.of(context).descr_introd3_3_2,
                            style: TextStyle(
                              fontFamily: 'IBM Plex Serif',
                              fontSize: 19 * femme,
                              fontWeight: FontWeight.w400,
                              color: DarkTheme.colorTextBlack,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // trackyourperiodsothersymptomsc (4:22)
                left: 47 * fem,
                top: 756 * femme,
                child: Align(
                  child: SizedBox(
                    width: 348 * fem,
                    height: 50 * femme,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: S.of(context).descr_introd3_4_1,
                            style: TextStyle(
                              fontFamily: 'IBM Plex Serif',
                              fontSize: 19 * femme,
                              fontWeight: FontWeight.w700,
                              color: DarkTheme.colorTextBlack,
                            ),
                          ),
                          TextSpan(
                            text: S.of(context).descr_introd3_4_2,
                            style: TextStyle(
                              fontFamily: 'IBM Plex Serif',
                              fontSize: 19 * femme,
                              fontWeight: FontWeight.w400,
                              color: DarkTheme.colorTextBlack,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 47 * fem,
                top: 824 * femme,
                child: Align(
                  child: SizedBox(
                    width: 324 * fem,
                    height: 50 * femme,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '${S.of(context).descr_introd3_5_1} ',
                            style: TextStyle(
                              fontFamily: 'IBM Plex Serif',
                              fontSize: 19 * femme,
                              fontWeight: FontWeight.w400,
                              color: DarkTheme.colorTextBlack,
                            ),
                          ),
                          TextSpan(
                            text: S.of(context).descr_introd3_5_2,
                            style: TextStyle(
                              fontFamily: 'IBM Plex Serif',
                              fontSize: 19 * femme,
                              fontWeight: FontWeight.w700,
                              color: DarkTheme.colorTextBlack,
                            ),
                          ),
                          TextSpan(
                            text: S.of(context).descr_introd3_5_3,
                            style: TextStyle(
                              fontFamily: 'IBM Plex Serif',
                              fontSize: 19 * femme,
                              fontWeight: FontWeight.w400,
                              color: DarkTheme.colorTextBlack,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // frameX8A (4:26)
                left: 9 * fem,
                top: 527 * femme,
                child: Align(
                  child: SizedBox(
                    width: 30 * fem,
                    height: 30 * femme,
                    child: Assets.icons.icRig.svg(),
                  ),
                ),
              ),
              Positioned(
                left: 9 * fem,
                top: 608 * femme,
                child: Align(
                  child: SizedBox(
                    width: 30 * fem,
                    height: 30 * femme,
                    child: Assets.icons.icRig.svg(),
                  ),
                ),
              ),
              Positioned(
                left: 9 * fem,
                top: 689 * femme,
                child: Align(
                  child: SizedBox(
                    width: 30 * fem,
                    height: 30 * femme,
                    child: Assets.icons.icRig.svg(),
                  ),
                ),
              ),
              Positioned(
                left: 9 * fem,
                top: 756 * femme,
                child: Align(
                  child: SizedBox(
                    width: 30 * fem,
                    height: 30 * femme,
                    child: Assets.icons.icRig.svg(),
                  ),
                ),
              ),
              Positioned(
                  left: 9 * fem,
                  top: 824 * femme,
                  child: Align(
                    child: SizedBox(
                      width: 30 * fem,
                      height: 30 * femme,
                      child: Assets.icons.icRig.svg(),
                    ),
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
