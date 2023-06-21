import 'package:calendar_flutter_app/pages/bg/bg.dart';
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../../generated/l10n.dart';
import '../../themes/app_color.dart';
import '../../utils/validates.dart';

class RegisterCodePage extends StatelessWidget {
  RegisterCodePage({super.key});
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
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
                        IconButton(
                        padding: EdgeInsets.zero,
                          alignment: Alignment.topLeft,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Assets.icons.icReturn.svg(width: 23 * fem),
                      ),
                      SizedBox(height: 40 * femme),
                      Text(S.of(context).register,
                          style: TextStyle(
                            color: DarkTheme.primaryBlue800,
                            fontSize: femme * 32,
                          )),
                      SizedBox(height: 19 * femme),
                      Text(S.of(context).register_code_title),
                      SizedBox(height: 40 * femme),
                      Text(
                        S.of(context).register_code,
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
                            return AppValidator.validateCode(value!);
                          },
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(
                                20 * fem, 16 * femme, 20 * fem, 16 * femme),
                            hintText: 'EX: 123456',
                         
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.teal),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 35 * femme),
                      Padding(
                        padding: EdgeInsets.only(right: 36 * fem),
                        child: InkWell(
                          onTap: () {
                            if (formkey.currentState!.validate()) {
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
                              style: TextStyle(
                                  fontSize: 28 * femme, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
