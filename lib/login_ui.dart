import 'package:animated_login/widgets/form_field.dart';
import 'package:flutter/material.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> with TickerProviderStateMixin {
  bool isEnabled = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 13, 12, 12),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/black g.png',
                    width: size.width,
                    height: size.width,
                  ),
                  Image.asset(
                    'assets/black p.png',
                    width: size.width,
                    height: size.width,
                  ),
                  Image.asset(
                    'assets/black y.png',
                    width: size.width,
                    height: size.width,
                  ),
                  Column(
                    children: [
                      CustomFormField(
                        hintText: "Email",
                      ),
                      SizedBox(height: 10),
                      CustomFormField(
                        hintText: "Password",
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: size.width * 0.6,
                        height: size.width * 0.1,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffe9d469),
                                Color(0xffcc5a75),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                          ),
                          child: Center(
                              child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
