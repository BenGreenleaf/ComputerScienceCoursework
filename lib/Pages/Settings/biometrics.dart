import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperion/Components/default_page.dart';
import 'package:hyperion/Pages/Settings/settings.dart';
import 'dart:math' as math;

class BiometricsPage extends StatefulWidget {
  const BiometricsPage({super.key});

  @override
  State<BiometricsPage> createState() => _BiometricsPageState();
}

class _BiometricsPageState extends State<BiometricsPage> {
  var switches = [false, false, false];
  @override
  Widget build(BuildContext context) {
    double width = 428;
    double height = 926;

    return ListView(children: [
      Stack(children: [
        SizedBox(
          width: width,
          height: height,
          // color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 52,
              ),
              Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                    Container(
                      width: 200,
                      height: 55,
                      alignment: Alignment.center,
                      child: Text(
                        "Biometrics",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 35,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ]),
              const SizedBox(
                height: 40,
              ),
              Container(
                  width: 361,
                  height: 214,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Theme.of(context).primaryColor,
                  ),
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 314,
                        height: 25,
                        child: Text(
                          "Security",
                          style: TextStyle(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            fontSize: 17,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Container(
                        width: 314,
                        height: 1,
                        color: const Color(0xbf41444a),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 314,
                        height: 125,
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              fontSize: 12,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w200,
                            ),
                            children: const <TextSpan>[
                              TextSpan(
                                  text: 'Important: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              TextSpan(
                                  text:
                                      'Hyperion offers a variety of biometric security features which help to keep you and your account secure. Please only activate features which only you have access to. \n \nI.e. If Face ID is active only your face should be registered on this device.'),
                            ],
                          ),
                        ),
                        //HERE
                      ),
                    ],
                  )),
              const SizedBox(
                height: 30,
              ),
              Container(
                  width: 361,
                  height: 383,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Theme.of(context).primaryColor,
                  ),
                  padding: const EdgeInsets.fromLTRB(22, 15, 15, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 314,
                          height: 52,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 50, //40
                                height: 30,
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 0, 6), //35
                                child: SvgPicture.asset(
                                    'assets/icons/biometrics.svg'),
                              ),
                              SizedBox(
                                width: 185,
                                height: 21,
                                child: Text(
                                  "Face ID",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor,
                                    fontSize: 13,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              Container(
                                height: 54,
                                padding: const EdgeInsets.all(5),
                                child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Switch(
                                      value: switches[0],
                                      //activeTrackColor: const Color(0xff316EBE),
                                      thumbColor:
                                          MaterialStateProperty.resolveWith(
                                              (states) {
                                        return const Color(0xffffffff);
                                      }),
                                      trackColor:
                                          MaterialStateProperty.resolveWith(
                                              (states) {
                                        // If the button is pressed, return blue, otherwise white
                                        if (switches[0]) {
                                          return const Color(0xff316EBE);
                                        } else {
                                          return const Color(0xffffffff);
                                        }
                                      }),
                                      onChanged: (value) {
                                        // This is called when the user toggles the switch.
                                        setState(() {
                                          switches[0] = value;
                                        });
                                      },
                                    )),
                              ),
                            ],
                          )),
                      Container(
                        width: 314,
                        height: 1,
                        color: const Color(0xbf41444a),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Automatically use your phone’s inbuilt Face ID feature to secure you and your account',
                        style: TextStyle(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          fontSize: 13,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                          width: 314,
                          height: 52,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 50, //50
                                height: 30, //35
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                                child: SvgPicture.asset(
                                    'assets/icons/passwordConfirm.svg'),
                              ),
                              SizedBox(
                                width: 185,
                                height: 21,
                                child: Text(
                                  "Password",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor,
                                    fontSize: 13,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              Container(
                                height: 54,
                                padding: const EdgeInsets.all(5),
                                child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Switch(
                                      value: switches[1],
                                      //activeTrackColor: const Color(0xff316EBE),
                                      thumbColor:
                                          MaterialStateProperty.resolveWith(
                                              (states) {
                                        return const Color(0xffffffff);
                                      }),
                                      trackColor:
                                          MaterialStateProperty.resolveWith(
                                              (states) {
                                        // If the button is pressed, return blue, otherwise white
                                        if (switches[1]) {
                                          return const Color(0xff316EBE);
                                        } else {
                                          return const Color(0xffffffff);
                                        }
                                      }),
                                      onChanged: (value) {
                                        // This is called when the user toggles the switch.
                                        setState(() {
                                          switches[1] = value;
                                        });
                                      },
                                    )),
                              ),
                            ],
                          )),
                      Container(
                        width: 314,
                        height: 1,
                        color: const Color(0xbf41444a),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Limit access to your account by introducing a secure password allowing only you to access',
                        style: TextStyle(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          fontSize: 13,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                          width: 314,
                          height: 52,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 50, //50
                                height: 30,
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 0, 6), //35
                                child: SvgPicture.asset(
                                    'assets/icons/fingerprint.svg'),
                              ),
                              SizedBox(
                                width: 185,
                                height: 21,
                                child: Text(
                                  "Fingerprint ID",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor,
                                    fontSize: 13,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              Container(
                                height: 54,
                                padding: const EdgeInsets.all(5),
                                child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Switch(
                                      value: switches[2],
                                      //activeTrackColor: const Color(0xff316EBE),
                                      thumbColor:
                                          MaterialStateProperty.resolveWith(
                                              (states) {
                                        return const Color(0xffffffff);
                                      }),
                                      trackColor:
                                          MaterialStateProperty.resolveWith(
                                              (states) {
                                        // If the button is pressed, return blue, otherwise white
                                        if (switches[2]) {
                                          return const Color(0xff316EBE);
                                        } else {
                                          return const Color(0xffffffff);
                                        }
                                      }),
                                      onChanged: (value) {
                                        // This is called when the user toggles the switch.
                                        setState(() {
                                          switches[2] = value;
                                        });
                                      },
                                    )),
                              ),
                            ],
                          )),
                      Container(
                        width: 314,
                        height: 1,
                        color: const Color(0xbf41444a),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Use your fingerprint identification to limit access to Hyperion',
                        style: TextStyle(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          fontSize: 13,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ])
    ]);
  }
}
