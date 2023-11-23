import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperion/Components/default_page.dart';
import 'dart:math' as math;
import 'package:hyperion/Pages/Settings/settings.dart';

class RiskProfilePage extends StatelessWidget {
  const RiskProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    double startHeight = 926;
    double width = 428;
    double height = 926;
    double staticH = MediaQuery.of(context).size.height;
    if (width > height) {
      height = width;
    }

    return Stack(children: [
      ListView(children: [
        Column(
          children: [
            Container(
              width: width,
              height: 1120,
              decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor),
              child: Column(
                children: [
                  const SizedBox(
                    height: 52,
                  ),
                  Row(children: [
                    const SizedBox(width: 35),
                    GestureDetector(
                        child: SizedBox(
                            height: 30,
                            width: 20, //54
                            child: Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(math.pi),
                              child: SvgPicture.asset('assets/icons/next.svg',
                                  colorFilter: ColorFilter.mode(
                                      Theme.of(context).primaryColor,
                                      BlendMode.srcIn)),
                            )),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  transitionDuration:
                                      const Duration(seconds: 0),
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      const Scaffold(
                                          body: StandardPage(
                                              content: SettingsPage(),
                                              navBar: true))));
                        }),
                    const SizedBox(width: 30),
                    Container(
                      width: 200,
                      height: 55,
                      alignment: Alignment.center,
                      child: Text(
                        "Risk Profile",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 35,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(105, 0, 120, 30),
                      child: Text(
                        'Question Category',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Text(
                        '1/8',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ]),
                  Container(
                    width: 346.69,
                    height: 436,
                    decoration: ShapeDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(width: 10),
                        Container(
                          width: 313,
                          padding: const EdgeInsets.only(top: 25, bottom: 25),
                          child: Text(
                            'Overall, I am more concerned with a greater return regardless of any risk',
                            style: TextStyle(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          width: 301.55,
                          height: 39.37,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).secondaryHeaderColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(width: 10),
                              Container(
                                width: 19.21,
                                height: 19.21,
                                decoration: ShapeDecoration(
                                  color: Theme.of(context).primaryColor,
                                  shape: const OvalBorder(),
                                ),
                              ),
                              Container(
                                width: 243,
                                padding: const EdgeInsets.only(left: 15),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '1 - Strongly Disagree',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 13,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: 301.55,
                          height: 39.37,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).secondaryHeaderColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(width: 10),
                              Container(
                                width: 19.21,
                                height: 19.21,
                                decoration: ShapeDecoration(
                                  color: Theme.of(context).primaryColor,
                                  shape: const OvalBorder(),
                                ),
                              ),
                              Container(
                                width: 243,
                                padding: const EdgeInsets.only(left: 15),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 13,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: 301.55,
                          height: 39.37,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).secondaryHeaderColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(width: 10),
                              Container(
                                width: 19.21,
                                height: 19.21,
                                decoration: ShapeDecoration(
                                  color: Theme.of(context).primaryColor,
                                  shape: const OvalBorder(),
                                ),
                              ),
                              Container(
                                width: 243,
                                padding: const EdgeInsets.only(left: 15),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 13,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: 301.55,
                          height: 39.37,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).secondaryHeaderColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(width: 10),
                              Container(
                                width: 19.21,
                                height: 19.21,
                                decoration: ShapeDecoration(
                                  color: Theme.of(context).primaryColor,
                                  shape: const OvalBorder(),
                                ),
                              ),
                              Container(
                                width: 243,
                                padding: const EdgeInsets.only(left: 15),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '4',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 13,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: 301.55,
                          height: 39.37,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).secondaryHeaderColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(width: 10),
                              Container(
                                width: 19.21,
                                height: 19.21,
                                decoration: ShapeDecoration(
                                  color: Theme.of(context).primaryColor,
                                  shape: const OvalBorder(),
                                ),
                              ),
                              Container(
                                width: 243,
                                padding: const EdgeInsets.only(left: 15),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '5',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 13,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: 301.55,
                          height: 39.37,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).secondaryHeaderColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(width: 10),
                              Container(
                                width: 19.21,
                                height: 19.21,
                                decoration: ShapeDecoration(
                                  color: Theme.of(context).primaryColor,
                                  shape: const OvalBorder(),
                                ),
                              ),
                              Container(
                                width: 243,
                                padding: const EdgeInsets.only(left: 15),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '6 - Strongly Agree',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 13,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    width: 346.69,
                    height: 436,
                    decoration: ShapeDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 313,
                          padding: const EdgeInsets.only(top: 25, bottom: 25),
                          child: Text(
                            'Overall, I am more concerned with a greater return regardless of any risk',
                            style: TextStyle(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          width: 301.55,
                          height: 39.37,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).secondaryHeaderColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(width: 10),
                              Container(
                                width: 19.21,
                                height: 19.21,
                                decoration: ShapeDecoration(
                                  color: Theme.of(context).primaryColor,
                                  shape: const OvalBorder(),
                                ),
                              ),
                              Container(
                                width: 243,
                                padding: const EdgeInsets.only(left: 15),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '1 - Strongly Disagree',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 13,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: 301.55,
                          height: 39.37,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).secondaryHeaderColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(width: 10),
                              Container(
                                width: 19.21,
                                height: 19.21,
                                decoration: ShapeDecoration(
                                  color: Theme.of(context).primaryColor,
                                  shape: const OvalBorder(),
                                ),
                              ),
                              Container(
                                width: 243,
                                padding: const EdgeInsets.only(left: 15),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 13,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: 301.55,
                          height: 39.37,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).secondaryHeaderColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(width: 10),
                              Container(
                                width: 19.21,
                                height: 19.21,
                                decoration: ShapeDecoration(
                                  color: Theme.of(context).primaryColor,
                                  shape: const OvalBorder(),
                                ),
                              ),
                              Container(
                                width: 243,
                                padding: const EdgeInsets.only(left: 15),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 13,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: 301.55,
                          height: 39.37,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).secondaryHeaderColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(width: 10),
                              Container(
                                width: 19.21,
                                height: 19.21,
                                decoration: ShapeDecoration(
                                  color: Theme.of(context).primaryColor,
                                  shape: const OvalBorder(),
                                ),
                              ),
                              Container(
                                width: 243,
                                padding: const EdgeInsets.only(left: 15),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '4',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 13,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: 301.55,
                          height: 39.37,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).secondaryHeaderColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(width: 10),
                              Container(
                                width: 19.21,
                                height: 19.21,
                                decoration: ShapeDecoration(
                                  color: Theme.of(context).primaryColor,
                                  shape: const OvalBorder(),
                                ),
                              ),
                              Container(
                                width: 243,
                                padding: const EdgeInsets.only(left: 15),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '5',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 13,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: 301.55,
                          height: 39.37,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).secondaryHeaderColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(width: 10),
                              Container(
                                width: 19.21,
                                height: 19.21,
                                decoration: ShapeDecoration(
                                  color: Theme.of(context).primaryColor,
                                  shape: const OvalBorder(),
                                ),
                              ),
                              Container(
                                width: 243,
                                padding: const EdgeInsets.only(left: 15),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '6 - Strongly Agree',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 13,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ]),
      Positioned(
        left: 395,
        top: staticH - (startHeight - 189),
        child: SizedBox(
          width: 22,
          height: 650,
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 4,
                    height: 610,
                    decoration:
                        BoxDecoration(color: Theme.of(context).primaryColor),
                  )),
              Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: 22,
                    height: 22,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 22,
                            height: 22,
                            decoration: ShapeDecoration(
                              color: Theme.of(context).primaryColor,
                              shape: const OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 3,
                          top: 3,
                          child: Container(
                            width: 16,
                            height: 16,
                            decoration: ShapeDecoration(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              shape: const OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 4,
                          top: 4,
                          child: Container(
                            width: 14,
                            height: 14,
                            decoration: ShapeDecoration(
                              color: Theme.of(context).primaryColor,
                              shape: const OvalBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              Positioned(
                left: 0,
                top: staticH - (startHeight - 152.5),
                child: SizedBox(
                  width: 22,
                  height: 22,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 22,
                          height: 22,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).primaryColor,
                            shape: const OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 3,
                        child: Container(
                          width: 16,
                          height: 16,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            shape: const OvalBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: staticH - (startHeight - 305),
                child: SizedBox(
                  width: 22,
                  height: 22,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 22,
                          height: 22,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).primaryColor,
                            shape: const OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 3,
                        child: Container(
                          width: 16,
                          height: 16,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            shape: const OvalBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: staticH - (startHeight - 457.5),
                child: SizedBox(
                  width: 22,
                  height: 22,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 22,
                          height: 22,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).primaryColor,
                            shape: const OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 3,
                        child: Container(
                          width: 16,
                          height: 16,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            shape: const OvalBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 22,
                  height: 22,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 22,
                          height: 22,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).primaryColor,
                            shape: const OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 3,
                        child: Container(
                          width: 16,
                          height: 16,
                          decoration: ShapeDecoration(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            shape: const OvalBorder(),
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
    ]);
  }
}
