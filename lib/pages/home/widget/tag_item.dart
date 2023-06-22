import 'package:flutter/material.dart';

import '../../../themes/app_color.dart';

class TagItem extends StatelessWidget {
  const TagItem({
    Key? key,
    required this.nameTag,
    required this.color,
  }) : super(key: key);
  final String nameTag;
  final Color color;

  Widget build(BuildContext context) {
    double baseWidth = 431.57;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double baseHieght = 939.03;
    double femme = MediaQuery.of(context).size.height / baseHieght;
    return Container(
        width: 79 * fem,
        height: 19 * fem,
        color: color,
        child: Align(
            child: Text(
          nameTag,
          style: TextStyle(
            fontFamily: 'IBM Plex Serif',
            fontSize: 14 * femme,
            fontWeight: FontWeight.w400,
            height: 1.3 * femme / fem,
            color: DarkTheme.colorTextBlack,
          ),
        )));
  }
}
