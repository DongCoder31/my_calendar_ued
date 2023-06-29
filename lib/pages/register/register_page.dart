<<<<<<< Updated upstream
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../../generated/l10n.dart';
import '../../themes/app_color.dart';
import 'package:calendar_flutter_app/pages/register/bg.dart';
import 'package:calendar_flutter_app/pages/register/validates.dart';

class RegisterPage extends StatefulWidget {
 const RegisterPage({super.key});
=======
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
>>>>>>> Stashed changes

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}
<<<<<<< Updated upstream
 

class _RegisterPageState extends State<RegisterPage> {
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    bool formState  = false;
    double baseWidth = 431.57;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double baseHieght = 939.03;
    double femme = MediaQuery.of(context).size.height / baseHieght;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: BgWidget(
            child: Container(
              padding: EdgeInsets.only(left: 35 * fem, top: 76 * femme),
              child: Form(
                key: formkey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Assets.icons.icReturn.svg(width: 23 * fem),
                      ),
                      SizedBox(height: 40 * femme),
                      Text(S.of(context).register,
                          style: TextStyle(
                            color: DarkTheme.primaryBlue800,
                            fontSize: femme * 32,
                          )),
                      SizedBox(height: 19 * femme),
                      RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  fontSize: 20 * femme,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              children: [
                            TextSpan(
                              text: S.of(context).register_title,
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            TextSpan(
                              text: ' ${S.of(context).register_title2}',
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                color: DarkTheme.primaryBlue600,
                              ),
                            ),
                            TextSpan(
                              text: ' ${S.of(context).register_title3}',
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ])),
                      SizedBox(height: 40 * femme),
                      Text(
                        S.of(context).register_email,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18 * femme,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 6 * femme),
                      Padding(
                        padding: EdgeInsets.only(right: 36 * fem),
                        child: TextFormField(
                          validator: (value) {
                            return AppValidator.validateEmail(value!);
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(
                                20 * fem, 16 * femme, 20 * fem, 16 * femme),
                            hintText: 'Ex: abc@example.com',
                            prefixIcon: Padding(
                                padding: EdgeInsets.all(18 * femme),
                                child: Assets.icons.icEmail.svg(color: DarkTheme.primaryBlue500)),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.teal),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40 * femme),
                      Text(
                        S.of(context).register_name,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18 * femme,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 6 * femme),
                      Padding(
                        padding: EdgeInsets.only(right: 36 * fem),
                        child: TextFormField(
                          validator: (value) {
                            return AppValidator.validateName(value!);
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(
                                22 * fem, 16 * femme, 22 * fem, 16 * femme),
                            hintText: 'Ex. Saul Ramirez',
                            prefixIcon: const Icon(
                              Icons.person_outline,
                              color: Colors.blue,
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.teal),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40 * femme),
                      Text(
                        S.of(context).register_passworld,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18 * femme,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 6 * femme),
                      Padding(
                        padding: EdgeInsets.only(right: 36 * fem),
                        child: TextFormField(
                          validator: (value) {
                            return AppValidator.validatePassworld(value!);
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(
                                22 * fem, 18 * femme, 22 * fem, 18 * femme),
                            hintText: 'Passworld',
                            prefixIcon: const Icon(
                              Icons.lock_outline,
                              color: Colors.blue,
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.teal),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 75 * femme),
                      Padding(
                        padding: EdgeInsets.only(right: 36 * fem),
                        child: TextButton(
                          onPressed: () {
                            if (formkey.currentState!.validate()) {   
                              formState = true;     
                              setState(() {
                              });                     
                              return;
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                139 * fem, 16 * femme, 139 * fem, 16 * femme),
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              border:
                                  Border.all(color: Colors.white, width: 1.0),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(16.0)),
                            ),
                            child: Text(
                              S.of(context).register,
                              textAlign: TextAlign.center,
                              style:  TextStyle(
                                  fontSize: 20*femme, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40 * femme),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            S.of(context).register_note,
                            style: TextStyle(fontSize: 16 * femme),
                          ),
                          SizedBox(
                            width: 6 * fem,
                          ),
                          GestureDetector(
                            onTap: () {  },
                            child: Text(
                              S.of(context).register_login,
                              style: TextStyle(
                                  color: DarkTheme.primaryBlue700,
                                  fontSize: 16 * femme,
                                  decoration: TextDecoration.underline),
                            ),
                          )
                        ],
                      )
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
=======

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
>>>>>>> Stashed changes
}
