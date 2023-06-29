import 'package:flutter/material.dart';

import '../constants/constants.dart';

class TextFormFieldItems extends StatelessWidget {
  const TextFormFieldItems(
      {super.key,
      this.textEditingController,
      this.keyBoardType,
      this.validate,
      this.prefixIcon,
      this.hintText});
  final TextEditingController? textEditingController;
  final TextInputType? keyBoardType;
  final String? Function(String?)? validate;
  final Widget? prefixIcon;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / Constants.baseWidth;
    double femme = MediaQuery.of(context).size.height / Constants.baseHieght;
    return TextFormField(
      keyboardType: keyBoardType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: textEditingController,
      validator: validate,
      decoration: InputDecoration(
          contentPadding:
              EdgeInsets.fromLTRB(22 * fem, 18 * femme, 22 * fem, 18 * femme),
          hintText: hintText,
          prefixIcon: prefixIcon,
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16 * fem),
              borderSide: const BorderSide(color: Color(0xff575DFB)))),
    );
  }
}
