import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperion/Pages/Home/home.dart';
import 'package:hyperion/Pages/Settings/settings.dart';

import 'default_page.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Positioned(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: constraints.maxWidth * 0.9,
              constraints: const BoxConstraints(maxWidth: 600),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                color: Theme.of(context).primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Home button
                  Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: _NavBarButton(
                        iconPath: 'assets/icons/Home.svg',
                        text: 'Home',
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
                                              content: HomePage(),
                                              navBar: true)),
                            ),
                          );
                        },
                      )),
                  // Investment button
                  Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        _NavBarButton(
                          iconPath: 'assets/icons/Investment.svg',
                          text: 'Investments',
                          onTap: () {
                            // Handle investment button tap
                          },
                        ),
                        // Profile button
                        _NavBarButton(
                          iconPath: 'assets/icons/profile.svg',
                          text: 'Profile',
                          onTap: () {
                            // Handle profile button tap
                          },
                        ),
                      ])),
                  // Settings button
                  Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: _NavBarButton(
                        iconPath: 'assets/icons/settings.svg',
                        text: 'Settings',
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
                                              content: SettingsPage(),
                                              navBar: true)),
                            ),
                          );
                        },
                      )),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

class _NavBarButton extends StatelessWidget {
  final String iconPath;
  final String text;
  final VoidCallback onTap;

  const _NavBarButton({
    required this.iconPath,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 70,
        height: 86,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 49,
              height: 4,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(3),
                  bottomRight: Radius.circular(3),
                ),
                color: Color(0xff316dbe),
              ),
            ),
            const SizedBox(height: 12),
            SvgPicture.asset(
              iconPath,
              colorFilter: ColorFilter.mode(
                Theme.of(context).scaffoldBackgroundColor,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(height: 7),
            SizedBox(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  fontSize: 11,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
