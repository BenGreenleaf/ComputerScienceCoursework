import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Components/circle.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              'assets/icons/gblogo.svg',
              height: 145,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).scaffoldBackgroundColor, BlendMode.srcIn),
            ),
          ),
          const SizedBox(height: 35),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Circle(size: 7),
            SizedBox(width: 4),
            Circle(size: 7),
            SizedBox(width: 4),
            Circle(size: 7),
            SizedBox(width: 15),
            Text('Loading Data',
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: "Montserrat",
                    color: Colors.white))
          ])
        ],
      ),
    );
  }
}
