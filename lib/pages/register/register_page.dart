import 'package:calendar_flutter_app/pages/register/register_viewmodel.dart';
import 'package:flutter/material.dart';
import '../../components/button_items.dart';
import '../../components/textformfile_items.dart';
import '../../constants/constants.dart';
import '../../gen/assets.gen.dart';
import '../../generated/l10n.dart';
import 'bg.dart';
import 'validates.dart';
import '../../base/base_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>
    with MixinBasePage<RegisterVM> {
  final formkey = GlobalKey<FormState>();
  final TextEditingController textEmailController = TextEditingController();
  final TextEditingController textPassworldController = TextEditingController();
  final TextEditingController textNameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    textEmailController.dispose();
    textNameController.dispose();
    textPassworldController.dispose();
  }

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
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: '${S.of(context).register}\n',
                                    style: TextStyle(
                                        color: const Color(0xFF575DFB),
                                        fontSize: 32 * femme / fem,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: -0.352 * fem)),
                                TextSpan(
                                  text: S.of(context).register_title,
                                  style: TextStyle(
                                      color: const Color(0xFF000000),
                                      fontSize: 16 * femme / fem,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.176 * fem),
                                ),
                                TextSpan(
                                  text: ' ${S.of(context).register_title2}',
                                  style: TextStyle(
                                      color: const Color(0xFF575DFB),
                                      fontSize: 16 * femme / fem,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.176 * fem),
                                ),
                                TextSpan(
                                  text: ' ${S.of(context).register_title3}',
                                  style: TextStyle(
                                      color: const Color(0xFF000000),
                                      fontSize: 16 * femme / fem,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.176 * fem),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: 40 * femme, right: 36 * fem),
                          child: Wrap(spacing: 6 * femme, children: [
                            Text(
                              S.of(context).register_email,
                              style: TextStyle(
                                  color: const Color(0xFF000000),
                                  fontSize: 16 * femme / fem,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.176 * fem),
                            ),
                            TextFormFieldItems(
                                keyBoardType: TextInputType.emailAddress,
                                textEditingController: textEmailController,
                                validate: (value) {
                                  return AppValidator.validateEmail(value!);
                                },
                                prefixIcon: const Icon(
                                  Icons.email_outlined,
                                  color: Color(0xFF575DFB),
                                ),
                                hintText: 'Ex: abc@example.com')
                          ]),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: 40 * femme, right: 36 * fem),
                          child: Wrap(spacing: 6 * femme, children: [
                            Text(
                              S.of(context).register_name,
                              style: TextStyle(
                                  color: const Color(0xFF000000),
                                  fontSize: 16 * femme / fem,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.176 * fem),
                            ),
                            TextFormFieldItems(
                                keyBoardType: TextInputType.name,
                                textEditingController: textNameController,
                                validate: (value) {
                                  return AppValidator.validateName(value!);
                                },
                                prefixIcon: const Icon(
                                  Icons.person_outline,
                                  color: Color(0xff575DFB),
                                ),
                                hintText: 'Ex. Saul Ramirez')
                          ]),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: 40 * femme, right: 36 * fem),
                          child: Wrap(spacing: 6 * femme, children: [
                            Text(
                              S.of(context).register_passworld,
                              style: TextStyle(
                                  color: const Color(0xFF000000),
                                  fontSize: 16 * femme / fem,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.176 * fem),
                            ),
                            TextFormFieldItems(
                                keyBoardType: TextInputType.visiblePassword,
                                textEditingController: textPassworldController,
                                validate: (value) {
                                  return AppValidator.validatePassworld(value!);
                                },
                                prefixIcon: const Icon(
                                  Icons.person_outline,
                                  color: Color(0xff575DFB),
                                ),
                                hintText: '**********')
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 59 * femme),
                          padding: EdgeInsets.only(right: 36 * fem),
                          child: ButtonItems(
                            buttonText: S.of(context).register,
                            onPressed: () {
                              if (formkey.currentState?.validate() == true) {
                                return;
                              }
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 84 * fem, top: 40 * femme, right: 85 * fem),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('${S.of(context).register_note} ',
                                  style: TextStyle(
                                      color: const Color(0xff000000),
                                      fontSize: 16 * femme / fem,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.176 * fem)),
                              GestureDetector(
                                onTap: () {},
                                child: Text(S.of(context).register_login,
                                    style: TextStyle(
                                        color: const Color(0xff575DFB),
                                        fontSize: 16 * femme / fem,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.176 * fem)),
                              )
                            ],
                          ),
                        )
                      ]),
                ),
              ),
            ),
          ),
        ));
  }

  @override
  RegisterVM create() {
    return RegisterVM();
  }

  @override
  void initialise(BuildContext context) {}
}
