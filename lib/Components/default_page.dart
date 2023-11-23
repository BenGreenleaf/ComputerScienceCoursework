import 'package:flutter/material.dart';
import 'package:hyperion/Components/nav_bar.dart';

class StandardPage extends StatelessWidget {
  final Widget content;
  final bool navBar;
  const StandardPage({
    super.key,
    required this.content,
    required this.navBar,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(child: content),
        //SizedBox.shrink() is another way of doing nothing
        (navBar) ? const NavBar() : const SizedBox.shrink(),
      ],
    );
  }
}
