import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConfirmPage extends StatefulWidget {
  const ConfirmPage({super.key});

  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
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
                          "Email \nConfirmation",
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
                  const SizedBox(height: 14),
                  const Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 324,
                        height: 43,
                        child: Text(
                          "Check your email to confirm access to your account",
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
            const SizedBox(height: 50.0),
            SizedBox(
              width: 400.0,
              height: 260.0,
              child: SvgPicture.asset('assets/icons/emailconfirmation.svg'),
            ),
            const SizedBox(height: 147.0),
            TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 31, horizontal: 142),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xff1D2939)),
                // foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
              ),
              onPressed: contin,
              child: const Text(
                "Continue",
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

  Future contin() async {}
}
