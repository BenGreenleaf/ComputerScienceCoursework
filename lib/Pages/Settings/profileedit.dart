import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperion/Components/default_page.dart';
import 'package:hyperion/Pages/Settings/settings.dart';
import 'dart:math' as math;

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = 428;
    double height = 926;

    return ListView(children: [
      Stack(
        children: [
          SizedBox(
            width: width,
            height: height,
            // color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 52,
                ),
                Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
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
                      FittedBox(
                        alignment: Alignment.center,
                        child: Text(
                          "Profile Edit",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 35,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ]),
                const SizedBox(height: 20),
                Container(
                  width: 361,
                  decoration: ShapeDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.fromLTRB(22, 18, 0, 0),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Profile Edit',
                            style: TextStyle(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              fontSize: 17,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                      const SizedBox(height: 10),
                      Container(
                        width: 314,
                        height: 1,
                        decoration:
                            const BoxDecoration(color: Color(0xBF41434A)),
                      ),
                      const SizedBox(height: 14),
                      Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 255,
                              padding: const EdgeInsets.only(left: 6),
                              // height: 48,
                              child: Text(
                                'Update and personalize your profile by editing your information, adding a photo, and editing your phone and email\n\n\n',
                                style: TextStyle(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  fontSize: 11,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            const SizedBox(width: 6),
                            Container(
                              width: 64,
                              height: 32,
                              alignment: Alignment.center,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF8E949C),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9)),
                              ),
                              child: Text(
                                'Save',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ])
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 303,
                      height: 41,
                      padding: const EdgeInsets.only(left: 32),
                      child: Text(
                        'Personal Options',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )),
                Container(
                  width: 361,
                  decoration: ShapeDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 318.51,
                        child: Column(
                          children: [
                            const SizedBox(height: 15),
                            const SizedBox(
                              width: 317.62,
                              height: 18.99,
                              child: Text(
                                'Forename',
                                style: TextStyle(
                                  color: Color(0xFF8E949C),
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 317.62,
                              height: 27.63,
                              child: Text(
                                'Benjamin',
                                style: TextStyle(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              width: 318.51,
                              height: 1.73,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF316DBE),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 320,
                        child: Column(
                          children: [
                            const SizedBox(
                              width: 319.10,
                              height: 19.08,
                              child: Text(
                                'Surname',
                                style: TextStyle(
                                  color: Color(0xFF8E949C),
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 319.10,
                              height: 27.75,
                              child: Text(
                                'Redleaf',
                                style: TextStyle(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              width: 320,
                              height: 1.73,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF8E949C),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 320,
                        child: Column(
                          children: [
                            const SizedBox(
                              width: 319.10,
                              height: 19.08,
                              child: Text(
                                'Nickname',
                                style: TextStyle(
                                  color: Color(0xFF8E949C),
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 319.10,
                              height: 27.75,
                              child: Text(
                                '27, Smithsun Lane',
                                style: TextStyle(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              width: 320,
                              height: 1.73,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF8E949C),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 320,
                        child: Column(
                          children: [
                            const SizedBox(
                              width: 319.10,
                              height: 19.08,
                              child: Text(
                                'Phone Number',
                                style: TextStyle(
                                  color: Color(0xFF8E949C),
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 319.10,
                              height: 27.75,
                              child: Text(
                                '07294472810',
                                style: TextStyle(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              width: 320,
                              height: 1.73,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF8E949C),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 320,
                        child: Column(
                          children: [
                            const SizedBox(
                              width: 319.10,
                              height: 19.08,
                              child: Text(
                                'Email',
                                style: TextStyle(
                                  color: Color(0xFF8E949C),
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 319.10,
                              height: 27.75,
                              child: Text(
                                'markz@gmail.com',
                                style: TextStyle(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              width: 320,
                              height: 1.73,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF8E949C),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: 320,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    width: 319.10,
                                    height: 19.08,
                                    child: Text(
                                      'Address',
                                      style: TextStyle(
                                        color: Color(0xFF8E949C),
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 319.10,
                                    height: 27.75,
                                    child: Text(
                                      '27 Smithsen Lane',
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor,
                                        fontSize: 14,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 320,
                                    height: 1.73,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF8E949C),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  SizedBox(
                                    width: 320,
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          width: 319.10,
                                          height: 19.08,
                                          child: Text(
                                            'Post Code',
                                            style: TextStyle(
                                              color: Color(0xFF8E949C),
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 319.10,
                                          height: 27.75,
                                          child: Text(
                                            'IP1 1PH',
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .scaffoldBackgroundColor,
                                              fontSize: 14,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 320,
                                          height: 1.73,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFF8E949C),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(13),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 20),
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
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                    width: 361,
                    height: 38,
                    alignment: Alignment.center,
                    decoration: ShapeDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    child: Text(
                      'Log Out',
                      style: TextStyle(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    )),
              ],
            ),
          ),
        ],
      )
    ]);
  }
}
