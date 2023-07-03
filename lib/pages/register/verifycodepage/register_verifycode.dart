import 'package:calendar_flutter_app/pages/register/verifycodepage/register_verifycode_viewmodel.dart';
import 'package:flutter/material.dart';

import '../../../base/base_page.dart';
import '../../../components/button_items.dart';
import '../../../components/textformfile_items.dart';
import '../../../constants/constants.dart';
import '../../../gen/assets.gen.dart';
import '../../../generated/l10n.dart';
import '../bg.dart';
import '../validates.dart';

class RegisterVerifyCode extends StatefulWidget {
  const RegisterVerifyCode({super.key});

  @override
  State<RegisterVerifyCode> createState() => _RegisterVerifyCodeState();
}

class _RegisterVerifyCodeState extends State<RegisterVerifyCode>
    with MixinBasePage<RegisterVerifycodeVM> {
  final formkey = GlobalKey<FormState>();
  final TextEditingController textCodeRegisterController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / Constants.baseWidth;
    double femme = MediaQuery.of(context).size.height / Constants.baseHieght;
    return builder(() => Scaffold(
            body: SingleChildScrollView(
                child: BgWidget(
          child: Padding(
            padding: EdgeInsets.only(left: 35 * fem, top: 57 * femme),
            child: Form(
              key: formkey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 38 * fem,
                      height: 38 * femme,
                      child: Assets.icons.icReturn.svg(width: 23 * fem),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 21 * femme),
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: '${S.of(context).register}\n',
                              style: TextStyle(
                                  color: const Color(0xFF575DFB),
                                  fontSize: 32 * femme / fem,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.352 * fem)),
                          TextSpan(
                            text: S.of(context).register_code_title,
                            style: TextStyle(
                                color: const Color(0xFF000000),
                                fontSize: 16 * femme / fem,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.176 * fem),
                          ),
                        ]))),
                    Container(
                      margin: EdgeInsets.only(top: 40 * femme, right: 36 * fem),
                      child: Wrap(spacing: 6 * femme, children: [
                        Text(
                          S.of(context).register_code,
                          style: TextStyle(
                              color: const Color(0xFF000000),
                              fontSize: 16 * femme / fem,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.176 * fem),
                        ),
                        TextFormFieldItems(
                            keyBoardType: TextInputType.number,
                            textEditingController: textCodeRegisterController,
                            validate: (value) {
                              return AppValidator.validateCode(value!);
                            },
                            prefixIcon: const Icon(
                              Icons.email_outlined,
                              color: Color(0xFF575DFB),
                            ),
                            hintText: 'EX: 123456')
                      ]),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 28 * femme, right: 36 * fem),
                      child: ButtonItems(
                        buttonText: S.of(context).register,
                        onPressed: () {
                          if (formkey.currentState?.validate() == true) {
                            return;
                          }
                        },
                      ),
                    ),
                  ]),
            ),
          ),
        ))));
  }

  @override
  RegisterVerifycodeVM create() {
    return RegisterVerifycodeVM();
  }

  @override
  void initialise(BuildContext context) {}
}
