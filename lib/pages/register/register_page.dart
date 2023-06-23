import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../../generated/l10n.dart';
import '../../themes/app_color.dart';
import 'package:calendar_flutter_app/pages/register/bg.dart';
import 'package:calendar_flutter_app/pages/register/validates.dart';

class RegisterPage extends StatefulWidget {
 const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}
 

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
}
