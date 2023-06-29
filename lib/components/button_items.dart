import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ButtonItems extends StatelessWidget {
  const ButtonItems({super.key, required this.onPressed, this.buttonText});
  final VoidCallback? onPressed;
  final String? buttonText;
  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / Constants.baseWidth;
    double femme = MediaQuery.of(context).size.height / Constants.baseHieght;
    return TextButton(
        onPressed: onPressed,
        child: Container(
          padding:
              EdgeInsets.fromLTRB(138 * fem, 16 * femme, 138 * fem, 16 * femme),
          decoration: BoxDecoration(
              color: const Color(0xff575DFB),
              borderRadius: BorderRadius.circular(16 * fem)),
          child: Center(
              child: Text(
            buttonText!,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: const Color(0xffFFFFFF),
                fontSize: 16 * femme / fem,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                letterSpacing: -0.176 * fem),
          )),
        ));
  }
}
