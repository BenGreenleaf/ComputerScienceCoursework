import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  @override
  /*void initState() {
    super.initState();
  }*/

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = 428;
    double height = 926;

    return ListView(children: [
      Container(
        width: width,
        height: height,
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: width,
              height: 280,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(40),
                ),
                color: Color(0xff1d2939),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: 50),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(children: [
                        const SizedBox(height: 7.0),
                        SizedBox(
                          width: 40.0,
                          height: 30.0,
                          child: SvgPicture.asset('assets/icons/back.svg'),
                        ),
                      ]),
                      const SizedBox(width: 50),
                      const SizedBox(
                        width: 250.0,
                        height: 100.0,
                        child: Text(
                          "Sign Up for \nHyperion",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 35,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(width: 50),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 324,
                        height: 43,
                        child: Text(
                          "Quantitative strategies, human touch. Let's build your wealth together",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      SizedBox(width: 50),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: width,
              height: 60,
              color: const Color(0xff1d2939),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: width,
                    height: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(0),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                      ),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SvgPicture.asset('assets/icons/signup.svg'),
            const SizedBox(height: 40.0),
            SizedBox(
                width: 324.0,
                height: 62.0,
                child: TextField(
                    controller: emailController,
                    style: const TextStyle(
                      color: Color(0xff1D2939),
                      fontSize: 15,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400,
                      height: 2,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Email Address',
                      prefixIcon: Container(
                          height: 35.0,
                          width: 48.0,
                          padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                          child: SvgPicture.asset('assets/icons/email.svg')),
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff1D2939), width: 0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                      hintStyle: const TextStyle(
                        color: Color(0xff1D2939),
                        fontSize: 15,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w400,
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff1D2939), width: 0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(13),
                          topRight: Radius.circular(13),
                          bottomLeft: Radius.circular(13),
                          bottomRight: Radius.circular(13),
                        ),
                      ),
                    ))),
            const SizedBox(height: 14.0),
            SizedBox(
                width: 324.0,
                height: 62.0,
                child: TextField(
                    controller: passwordController,
                    style: const TextStyle(
                      color: Color(0xff1D2939),
                      fontSize: 15,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400,
                      height: 2,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Container(
                          height: 20.0,
                          width: 48.0,
                          padding: const EdgeInsets.fromLTRB(15, 0, 14, 4),
                          child: SvgPicture.asset('assets/icons/padlock.svg')),
                      hintText: 'Password',
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff1D2939), width: 0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                      hintStyle: const TextStyle(
                        color: Color(0xff1D2939),
                        fontSize: 15,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w400,
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff1D2939), width: 0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(13),
                          topRight: Radius.circular(13),
                          bottomLeft: Radius.circular(13),
                          bottomRight: Radius.circular(13),
                        ),
                      ),
                    ))),
            const SizedBox(height: 14.0),
            SizedBox(
                width: 324.0,
                height: 62.0,
                child: TextField(
                    controller: confirmpasswordController,
                    style: const TextStyle(
                      color: Color(0xff1D2939),
                      fontSize: 15,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400,
                      height: 2,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Container(
                          height: 20.0,
                          width: 48.0,
                          padding: const EdgeInsets.fromLTRB(15, 0, 14, 4),
                          child: SvgPicture.asset(
                              'assets/icons/passwordConfirm.svg')),
                      hintText: 'Confirm Password',
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff1D2939), width: 0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                      hintStyle: const TextStyle(
                        color: Color(0xff1D2939),
                        fontSize: 15,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w400,
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff1D2939), width: 0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(13),
                          topRight: Radius.circular(13),
                          bottomLeft: Radius.circular(13),
                          bottomRight: Radius.circular(13),
                        ),
                      ),
                    ))),
            const SizedBox(height: 51.0),
            TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 31.0, horizontal: 152.0),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xff1D2939)),
                // foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
              ),
              onPressed: signUp,
              child: const Text(
                "Sign Up",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      )
    ]);
  }

  Future signUp() async {
    if (passwordController.text.trim() ==
        confirmpasswordController.text.trim()) {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    }
  }
}
