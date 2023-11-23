import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  OverlayEntry? _overlayEntry;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    _overlayEntry?.remove();
    super.dispose();
  }

  void _showIncorrectLoginPopup(BoxConstraints constraints) {
    _overlayEntry = OverlayEntry(
      builder: (context) {
        double width = constraints.maxWidth;
        double height = constraints.maxHeight;

        return Positioned(
          top: height * 0.753,
          left: width * 0.09,
          right: width * 0.09,
          child: Material(
            color: Colors.transparent,
            elevation: 8,
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
              ),
              child: const Text(
                'Incorrect login',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        );
      },
    );

    Overlay.of(context).insert(_overlayEntry!);

    Future.delayed(const Duration(seconds: 3), () {
      _overlayEntry?.remove();
      _overlayEntry = null;
    });
  }

  Future<void> signIn(BoxConstraints constraints) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      // Navigate to the next screen
    } on FirebaseAuthException {
      _showIncorrectLoginPopup(constraints);
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40),
                    ),
                    color: Color(0xff1d2939),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50, left: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              height: 70,
                              child: SvgPicture.asset(
                                'assets/icons/back.svg',
                                height: 30,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 100,
                                margin: const EdgeInsets.only(right: 50),
                                child: const Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Login to your account",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xffffffff),
                                      fontSize: 35,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 40, right: 40),
                        child: const Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 60,
                color: const Color(0xff1d2939),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 60, right: 60, top: 0),
                  width: 235,
                  child: SvgPicture.asset('assets/icons/login.svg'),
                ),
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 50, right: 50),
                        child: TextField(
                          controller: emailController,
                          style: const TextStyle(
                            color: Color(0xff1D2939),
                            fontSize: 15,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(15, 22, 15, 23),
                              child: SvgPicture.asset('assets/icons/email.svg'),
                            ),
                            hintText: 'Email Address',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xff1D2939), width: 0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintStyle: const TextStyle(
                              color: Color(0xff1D2939),
                              fontSize: 15,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w400,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(left: 50, right: 50, top: 15),
                        child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          style: const TextStyle(
                            color: Color(0xff1D2939),
                            fontSize: 17,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(18, 20, 15, 20),
                              child:
                                  SvgPicture.asset('assets/icons/padlock.svg'),
                            ),
                            hintText: 'Password',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xff1D2939), width: 0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintStyle: const TextStyle(
                              color: Color(0xff1D2939),
                              fontSize: 15,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w400,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 60, right: 60),
                        child: ElevatedButton(
                          onPressed: () async {
                            await signIn(constraints);
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 27.0),
                            backgroundColor: const Color(0xff1d2939),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const SizedBox(
                            width: double.infinity,
                            child: Text(
                              "Login",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot\u00a0Password",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xff1D2939),
                              fontSize: 20,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
            ],
          ),
        );
      },
    );
  }
}
