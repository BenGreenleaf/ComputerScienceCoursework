import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperion/Components/default_page.dart';
import 'package:hyperion/Pages/PasswordReset/reset.dart';
import 'package:hyperion/Pages/Settings/biometrics.dart';
import 'package:hyperion/Pages/Settings/notifications.dart';
import 'package:hyperion/Pages/Settings/riskprofile.dart';
import 'package:hyperion/main.dart';
import 'package:hyperion/Pages/Settings/profileedit.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

var mode = false;

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 52, // 52
        ),
       Row(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
              Padding(padding: const EdgeInsets.only(right: 40), child: SizedBox(
                child: Text(
                  "Settings",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 35, // 35
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), // 15
                  color: Theme.of(context).primaryColor,
                ),
                child: FittedBox(
                    fit: BoxFit.contain,
                    child: Switch(
                      value: mode,
                      //activeTrackColor: const Color(0xff316EBE),
                      thumbColor: MaterialStateProperty.resolveWith((states) {
                        return const Color(0xffd3d3d3);
                      }),
                      trackColor: MaterialStateProperty.resolveWith((states) {
                        // If the button is pressed, return blue, otherwise white
                        if (mode) {
                          return Theme.of(context).scaffoldBackgroundColor;
                        } else {
                          return const Color(0xffffffff);
                        }
                      }),
                      onChanged: (value) {
                        // This is called when the user toggles the switch.
                        setState(() {
                          mode = value;
                          if (value) {
                            MyApp.of(context).changeTheme(ThemeMode.dark);
                          } else {
                            MyApp.of(context).changeTheme(ThemeMode.light);
                          }
                        });
                      },
                    )),
              )
            ]),
        const SizedBox(height: 30), // 30
        Container(
            width: 361, // 361
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), // 15
              color: Theme.of(context).primaryColor,
            ), // 22 21 22 0
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: 72, // 72
                            height: 72, // 72
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15), // 15
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15), // 15
                              child: Image.network(
                                'https://imageio.forbes.com/specials-images/imageserve/5c76b7d331358e35dd2773a9/0x0.jpg?format=jpg',
                                height: 250,
                                width: 250,
                              ),
                            )),
                        const SizedBox(width: 19), // 19
                        SizedBox(
                            width: 220, //220
                            height: 70,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 220, // 220
                                  height: 25, // 25
                                  child: Text(
                                    "Mark Zuckerberg",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                      fontSize: 18, //18
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 224, //224
                                  height: 17, //17
                                  child: Text(
                                    "Los Angeles",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                      fontSize: 12, //12
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 13, // 13
                                ),
                                GestureDetector(
                                  child: const SizedBox(
                                    width: 224, //224
                                    height: 13, //13
                                    child: Text(
                                      "Edit",
                                      style: TextStyle(
                                        color: Color(0xff316EBE),
                                        fontSize: 10, //10
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
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
                                                        content:
                                                            ProfileEditPage(),
                                                        navBar: true))));
                                  },
                                ),
                              ],
                            )),
                      ],
                    )),
                const SizedBox(
                  height: 10, //6
                ),
                Container(
                  width: 314, //314
                  height: 1, //1
                  color: const Color(0xbf41444a),
                ),
                SizedBox(
                    width: 314, //314
                    height: 65, //65
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 35,
                          padding:
                              const EdgeInsets.fromLTRB(0, 5, 0, 10), //5 0 0 7
                          child: SvgPicture.asset('assets/icons/emailGrey.svg'),
                        ),
                        const SizedBox(width: 20), //20 //20
                        SizedBox(
                          width: 187, //187
                          height: 23, //23
                          child: Text(
                            "markz@gmail.com",
                            style: TextStyle(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              fontSize: 13, //13
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                  width: 314, //314
                  height: 1, //1
                  color: const Color(0xbf41444a),
                ),
                SizedBox(
                    width: 314, //314
                    height: 50, //50
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 35,
                          padding:
                              const EdgeInsets.fromLTRB(0, 0, 0, 10), //5 0 0 7
                          child: SvgPicture.asset('assets/icons/phone.svg'),
                        ),
                        const SizedBox(width: 20), //20
                        SizedBox(
                          width: 187, //187
                          height: 21, //21
                          child: Text(
                            "(+44) 7484 892919",
                            style: TextStyle(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              fontSize: 13, //13
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                  width: 314, //314
                  height: 1, //1
                  color: const Color(0xbf41444a),
                ),
                GestureDetector(
                    child: Container(
                        width: 361, //314
                        height: 65,
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        decoration: BoxDecoration(
                            border: Border.all(style: BorderStyle.none)), //65
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 35,
                              padding: const EdgeInsets.fromLTRB(
                                  0, 0, 0, 10), //5 0 0 7
                              child: SvgPicture.asset('assets/icons/risk.svg'),
                            ),
                            const SizedBox(width: 20), //20
                            SizedBox(
                              width: 187, //187
                              height: 21, //21
                              child: Text(
                                "Risk Profile",
                                style: TextStyle(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  fontSize: 13, //13
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            const SizedBox(width: 35), //35
                            Container(
                              height: 54, //54
                              padding: const EdgeInsets.fromLTRB(
                                  5, 0, 0, 5), //5 0 0 7
                              child: SvgPicture.asset('assets/icons/next.svg'),
                            ),
                          ],
                        )),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              transitionDuration: const Duration(seconds: 0),
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      const Scaffold(
                                          body: StandardPage(
                                              content: RiskProfilePage(),
                                              navBar: false))));
                    }),
              ],
            )),
        const SizedBox(
          height: 20, //25
        ),
        Container(
            width: 361, //361
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).primaryColor,
            ),
            //padding: EdgeInsets.fromLTRB(22, 9,
            //22, 0), //22 9 22 0
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Container(
                      width: 361, //314
                      height: 65,
                      decoration: BoxDecoration(
                          border: Border.all(style: BorderStyle.none)),
                      padding: const EdgeInsets.fromLTRB(22, 6, 22, 0), //65
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 50, //50
                            height: 35, //35
                            padding:
                                const EdgeInsets.fromLTRB(0, 0, 0, 7), //5 0 0 7
                            child:
                                SvgPicture.asset('assets/icons/biometrics.svg'),
                          ),
                          const SizedBox(width: 20), //20
                          SizedBox(
                            width: 187, //187
                            height: 21, //21
                            child: Text(
                              "Biometrics",
                              style: TextStyle(
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                fontSize: 13, //13
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          const SizedBox(width: 35), //35
                          Container(
                            height: 54, //54
                            padding:
                                const EdgeInsets.fromLTRB(5, 0, 0, 7), //5 0 0 7
                            child: SvgPicture.asset('assets/icons/next.svg'),
                          ),
                        ],
                      )),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: const Duration(seconds: 0),
                            pageBuilder: (context, animation,
                                    secondaryAnimation) =>
                                const Scaffold(
                                    body: StandardPage(
                                        content: BiometricsPage(),
                                        navBar: true))));
                  },
                ),
                Container(
                  width: 314, //314
                  height: 1, //1
                  color: const Color(0xbf41444a),
                ),
                GestureDetector(
                    child: Container(
                        width: 361, //314
                        height: 65,
                        decoration: BoxDecoration(
                            border: Border.all(style: BorderStyle.none)),
                        padding: const EdgeInsets.fromLTRB(22, 6, 22, 0), //65
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 50, //50
                              height: 35, //35
                              padding: const EdgeInsets.fromLTRB(
                                  0, 0, 0, 5), //0 0 0 5
                              child: SvgPicture.asset(
                                  'assets/icons/passwordConfirm.svg'),
                            ),
                            const SizedBox(width: 20), //26
                            SizedBox(
                              width: 187, //200
                              height: 21, //21
                              child: Text(
                                "Reset Password",
                                style: TextStyle(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  fontSize: 13, //13
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            const SizedBox(width: 35), //35
                            Container(
                              height: 54, //54
                              padding: const EdgeInsets.fromLTRB(
                                  5, 0, 0, 7), //5 0 0 7
                              child: SvgPicture.asset('assets/icons/next.svg'),
                            ),
                          ],
                        )),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              transitionDuration: const Duration(seconds: 0),
                              pageBuilder: (context, animation,
                                      secondaryAnimation) =>
                                  const Scaffold(body: ResetPasswordPage())));
                    }),
                Container(
                  width: 314, //314
                  height: 1, //1
                  color: const Color(0xbf41444a),
                ),
                GestureDetector(
                    child: Container(
                        width: 361, //314
                        height: 65,
                        decoration: BoxDecoration(
                            border: Border.all(style: BorderStyle.none)),
                        padding: const EdgeInsets.fromLTRB(22, 6, 22, 0), //65
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 50, //50
                              height: 35, //35
                              padding: const EdgeInsets.fromLTRB(
                                  0, 0, 0, 7), //5 0 0 7
                              child: SvgPicture.asset(
                                  'assets/icons/notifications.svg'),
                            ),
                            const SizedBox(width: 20), //20
                            SizedBox(
                              width: 187, //200
                              height: 21, //21
                              child: Text(
                                "Notifications",
                                style: TextStyle(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  fontSize: 13, //13
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            const SizedBox(width: 35), //35
                            Container(
                              height: 54, //54
                              padding: const EdgeInsets.fromLTRB(
                                  5, 0, 0, 7), //5 0 0 7
                              child: SvgPicture.asset('assets/icons/next.svg'),
                            ),
                          ],
                        )),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              transitionDuration: const Duration(seconds: 0),
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      const Scaffold(
                                          body: StandardPage(
                                              content: NotificationsPage(),
                                              navBar: true))));
                    }),
                Container(
                  width: 314, //314
                  height: 1, //1
                  color: const Color(0xbf41444a),
                ),
                Container(
                    width: 361, //314
                    height: 65,
                    padding: const EdgeInsets.fromLTRB(22, 6, 22, 0), //65
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 50, //50
                          height: 35, //35
                          padding:
                              const EdgeInsets.fromLTRB(0, 0, 0, 7), //5 0 0 7
                          child: SvgPicture.asset('assets/icons/dollars.svg'),
                        ),
                        const SizedBox(width: 20), //20
                        SizedBox(
                          width: 187, //200
                          height: 21, //21
                          child: Text(
                            "Connected Banks",
                            style: TextStyle(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              fontSize: 13, //13
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        const SizedBox(width: 35), //35
                        Container(
                          height: 54, //54
                          padding:
                              const EdgeInsets.fromLTRB(5, 0, 0, 7), //5 0 0 7
                          child: SvgPicture.asset('assets/icons/next.svg'),
                        ),
                      ],
                    )),
                Container(
                  width: 314, //314
                  height: 1, //1
                  color: const Color(0xbf41444a),
                ),
                Container(
                    width: 361, //314
                    height: 65,
                    padding: const EdgeInsets.fromLTRB(22, 6, 22, 0), //65
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 50, //50
                          height: 35, //35
                          padding:
                              const EdgeInsets.fromLTRB(0, 0, 0, 7), //5 0 0 7
                          child: SvgPicture.asset('assets/icons/rankings.svg'),
                        ),
                        const SizedBox(width: 20), //20
                        SizedBox(
                          width: 187, //187
                          height: 21, //21
                          child: Text(
                            "Rankings",
                            style: TextStyle(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              fontSize: 13, //13
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        const SizedBox(width: 35), //35
                        Container(
                          height: 54, //54
                          padding:
                              const EdgeInsets.fromLTRB(5, 0, 0, 7), //5 0 0 7
                          child: SvgPicture.asset('assets/icons/next.svg'),
                        ),
                      ],
                    )),
              ],
            )),
      ],
    );
  }
}
