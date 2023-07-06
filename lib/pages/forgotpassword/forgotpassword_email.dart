import 'package:calendar_flutter_app/pages/register/bg.dart';
import 'package:flutter/material.dart';

import '../../../base/base_page.dart';
import '../../../components/button_items.dart';
import '../../../components/textformfile_items.dart';
import '../../../constants/constants.dart';
import '../../../gen/assets.gen.dart';
import '../../../generated/l10n.dart';
import '../register/validates.dart';
import 'forgotpasswordVM/forgotpassword_email_viewmodel.dart';

class ForgotPasswordEmail extends StatefulWidget {
  const ForgotPasswordEmail({super.key});

  @override
  State<ForgotPasswordEmail> createState() => _ForgotPasswordEmailState();
}

class _ForgotPasswordEmailState extends State<ForgotPasswordEmail>
    with MixinBasePage<ForgotPasswordEmailVM> {
  final formkey = GlobalKey<FormState>();
  final TextEditingController textEmailRegisterController =
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
                        margin:
                            EdgeInsets.only(top: 36 * femme, right: 93 * fem),
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: '${S.of(context).forgotPassword}\n',
                              style: TextStyle(
                                  color: const Color(0xFF575DFB),
                                  fontSize: 32 * femme / fem,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.352 * fem)),
                          TextSpan(
                            text: S.of(context).forgotPassword_title_email,
                            style: TextStyle(
                                color: const Color(0xFF000000),
                                fontSize: 16 * femme / fem,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.176 * fem),
                          ),
                        ]))),
                    Container(
                      margin: EdgeInsets.only(top: 55 * femme, right: 36 * fem),
                      child: Wrap(spacing: 6 * femme, children: [
                        Text(
                          S.of(context).email,
                          style: TextStyle(
                              color: const Color(0xFF000000),
                              fontSize: 16 * femme / fem,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.176 * fem),
                        ),
                        TextFormFieldItems(
                          keyBoardType: TextInputType.emailAddress,
                          textEditingController: textEmailRegisterController,
                          validate: (value) {
                            return AppValidator.validateEmail(value!);
                          },
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                            color: Color(0xFF575DFB),
                          ),
                          hintText: 'Ex: abc@example.com',
                        )
                      ]),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 28 * femme, right: 36 * fem),
                      child: ButtonItems(
                        buttonText: S.of(context).submit,
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
  ForgotPasswordEmailVM create() {
    return ForgotPasswordEmailVM();
  }

  @override
  void initialise(BuildContext context) {}
}
