import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';

class SplashScreen3 extends StatelessWidget {
  const SplashScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        // iphone13promax3dNv (3:8)
        width: double.infinity,
        height: 926 * fem,
        child: Stack(
          children: [
            Positioned(
              // image3Jva (3:9)
              left: 3 * fem,
              top: 0 * fem,
              child: Align(
                child: SizedBox(
                  width: 426.73 * fem,
                  height: 939.92 * fem,
                  child: Image.network(
                    'assets/images/backgroud.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // anappthatcaresT74 (3:18)
              left: 42 * fem,
              top: 36 * fem,
              child: Align(
                child: SizedBox(
                  width: 299 * fem,
                  height: 46 * fem,
                  child: Text(
                    'An app that cares',
                    style: TextStyle(
                      fontSize: 35 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.3 * ffem / fem,
                      decoration: TextDecoration.underline,
                      color: Color(0xff000000),
                      decorationColor: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // image48iz (4:39)
              left: 80 * fem,
              top: 75 * fem,
              child: Align(
                child: SizedBox(
                  width: 258 * fem,
                  height: 258 * fem,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Image.asset(
                      'assets/images/splace3.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // manageyourweightwithecpertguid (4:19)
              left: 50 * fem,
              top: 337 * fem,
              child: Align(
                child: SizedBox(
                  width: 294 * fem,
                  height: 50 * fem,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 19 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2999999398 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'Manage your weight',
                          style: TextStyle(
                            fontSize: 19 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.3 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                        TextSpan(
                          text: ' with ecpert\nguidance',
                          style: TextStyle(
                            fontSize: 19 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // trainlivewiththebestcoachesins (4:20)
              left: 50 * fem,
              top: 387 * fem,
              child: Align(
                child: SizedBox(
                  width: 300 * fem,
                  height: 50 * fem,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 19 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2999999398 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'Train live',
                          style: TextStyle(
                            fontSize: 19 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.3 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                        TextSpan(
                          text: ' with the best coaches&\ninstuctors',
                          style: TextStyle(
                            fontSize: 19 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // germedicaladvicefromindiatoppc (4:21)
              left: 50 * fem,
              top: 437 * fem,
              child: Align(
                child: SizedBox(
                  width: 317 * fem,
                  height: 50 * fem,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 19 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2999999398 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'Ger medical advice',
                          style: TextStyle(
                            fontSize: 19 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.3 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                        TextSpan(
                          text:
                              ' from India top \nPCOS, Thyroid & Fertility Experts',
                          style: TextStyle(
                            fontSize: 19 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3 * ffem / fem,
                            color: Color(0xff000000),
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
              left: 50 * fem,
              top: 487 * fem,
              child: Align(
                child: SizedBox(
                  width: 348 * fem,
                  height: 25 * fem,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 19 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2999999398 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'Track your periods',
                          style: TextStyle(
                            fontSize: 19 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.3 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                        TextSpan(
                          text: ' & other symptoms',
                          style: TextStyle(
                            fontSize: 19 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // comfortablygetlabtestsfromyour (4:23)
              left: 50 * fem,
              top: 537 * fem,
              child: Align(
                child: SizedBox(
                  width: 324 * fem,
                  height: 50 * fem,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 19 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2999999398 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'Comfortably ',
                          style: TextStyle(
                            fontSize: 19 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                        TextSpan(
                          text: 'get lab tests',
                          style: TextStyle(
                            fontSize: 19 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.3 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                        TextSpan(
                          text: ' from your \nhome',
                          style: TextStyle(
                            fontSize: 19 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3 * ffem / fem,
                            color: Color(0xff000000),
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
              left: 14.5408935547 * fem,
              top: 337 * fem,
              child: Align(
                child: SizedBox(
                  width: 24.92 * fem,
                  height: 24.92 * fem,
                  child: Assets.icons.icRig.svg(),
                ),
              ),
            ),
            Positioned(
              // frameq8r (4:28)
              left: 14.5408935547 * fem,
              top: 387 * fem,
              child: Align(
                child: SizedBox(
                  width: 24.92 * fem,
                  height: 24.92 * fem,
                  child: Assets.icons.icRig.svg(),
                ),
              ),
            ),
            Positioned(
              // frame99Y (4:30)
              left: 14.5408935547 * fem,
              top: 437 * fem,
              child: Align(
                child: SizedBox(
                  width: 24.92 * fem,
                  height: 24.92 * fem,
                  child: Assets.icons.icRig.svg(),
                ),
              ),
            ),
            Positioned(
              // frameFiN (4:32)
              left: 14.5408935547 * fem,
              top: 487 * fem,
              child: Align(
                child: SizedBox(
                  width: 24.92 * fem,
                  height: 24.92 * fem,
                  child: Assets.icons.icRig.svg(),
                ),
              ),
            ),
            Positioned(
              // framekf8 (4:34)
              left: 14.5408935547 * fem,
              top: 537 * fem,
              child: Align(
                child: SizedBox(
                  width: 24.92 * fem,
                  height: 24.92 * fem,
                  child: Assets.icons.icRig.svg(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
