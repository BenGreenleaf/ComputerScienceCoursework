import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostSplashPage extends StatefulWidget {
  const PostSplashPage({super.key});

  @override
  State<PostSplashPage> createState() => _PostSpalshPageState();
}

class _PostSpalshPageState extends State<PostSplashPage> {
  @override
  void initState() {
    super.initState();
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
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/postsplash.svg'),
            const SizedBox(height: 50.33),
            const SizedBox(
              width: 345,
              height: 85,
              child: Text(
                "Investing, \nMade Better",
                style: TextStyle(
                  color: Color(0xff1d2939),
                  fontSize: 35,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 20.33),
            const SizedBox(
              width: 345,
              height: 55,
              child: Text(
                "Numbers are our language, your financial goal is our mission",
                style: TextStyle(
                  color: Color(0xff1d2939),
                  fontSize: 18,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            //SizedBox(height: 10.33),
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
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(40),
                      ),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            //SizedBox(height: 20.33),
            Container(
              width: width,
              height: 241,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                ),
                color: Color(0xff1d2939),
              ),
              padding: const EdgeInsets.only(
                top: 59,
                bottom: 73,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 324,
                    height: 62,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 324,
                          height: 62,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.only(
                            top: 14,
                            bottom: 14,
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 324,
                                height: 25,
                                child: Text(
                                  "Create Account",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff1d2939),
                                    fontSize: 20,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),
                  const SizedBox(
                    width: 324,
                    height: 33,
                    child: Text(
                      "Already have an account",
                      textAlign: TextAlign.center,
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
          ],
        ),
      )
    ]);
  }
}
