import 'package:calendar_flutter_app/constants/color.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:calendar_flutter_app/themes/app_color.dart';
import 'package:email_validator/email_validator.dart';



class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  var _emailError = "Email không hợp lệ";
  var _passError = "Password không để trống";
  bool _emailInvalid = false;
  bool _passInvalid = false;
  @override
  void initState() {
    super.initState();
    bool _isObscured = true;
    _controller = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 431.57;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double baseHieght = 939.03;
    double femme = MediaQuery.of(context).size.height / baseHieght;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: DarkTheme.backgroundcolor,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // xu li back
            },
          ),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(16.0, 49.0, 16.0, 149.0),
          constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/backgroud.png'),
              fit: BoxFit.cover,
            ),
            color: DarkTheme.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),

                    ),
                    SizedBox(height: 24),
                    Text(
                      'Login now to track all your expenses and income at a place!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),

                    ),
                    SizedBox(height: 7),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        errorText: _emailInvalid ? _emailError : null,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide(color: Color(0xFF575DFB)),
                        ),
                        prefixIcon: Icon(
                          Icons.alternate_email,
                          color: Color(0xFF575DFB),
                        ),
                        hintText: 'Ex: abc@example.com',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Password',
                      style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),

                    SizedBox(height: 7),
                    TextField(
                      obscureText: false,
                      controller: _passController,
                      decoration: InputDecoration(
                        errorText: _passInvalid ? _passError : null,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide(color: Color(0xFF575DFB)),
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0xFF575DFB),
                        ),
                        hintText: '**********',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                  onPressed: () {
                    // Xu li su kien khi bam vao button forgotpassword
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color(0xFF575DFB),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ),
              SizedBox(height: 10),
              Container(
                width: 343,
                height: 56,
                margin: EdgeInsets.only(top: 10, left: 10),
                child: ElevatedButton(
                  onPressed: () {
                    onLoginClicked();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 343,
                height: 1,
                margin: EdgeInsets.only(top: 20, left: 15),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                ),
                transform: Matrix4.rotationZ(0),
              ),
              SizedBox(height: 10),
        Container(
          width: 434,
          height: 56,
          margin: EdgeInsets.only(top: 10, left: 10),
          child: ElevatedButton.icon(
            onPressed: () {
              // Xử lý khi nút "Continue with Google" được nhấn
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(
                  color: Colors.blue,
                  width: 15,
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 72),
              elevation: 0,
            ),
            icon: Icon(
              Icons.g_mobiledata_rounded,
            color: Colors.green,
            ),
            label: Text(
              'Continue with Google',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
          SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(
            "Don't have an account? ",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
          ),
            TextButton(
                    onPressed: () {},
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
              ],
            ),
            ],
          ),
        ),
      ),
    );
  }
  void onLoginClicked(){
    setState(() {
      if(!EmailValidator.validate(_emailController as String)){
        _emailInvalid = false;
      }
      else{
        _emailInvalid = true;
      };
      if(_passController.text.length < 6 ){
        _passInvalid = false;
      }
      else{
        _passInvalid = true;
      };
    });
  }
}
