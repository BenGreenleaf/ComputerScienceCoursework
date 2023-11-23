import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hyperion/Pages/Login/login.dart';
import 'package:hyperion/Pages/Home/home.dart';
import 'package:hyperion/Pages/Login/signup.dart';
import 'Components/default_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

ThemeData _lightMode = ThemeData(
    primaryColor: const Color(0xff1d2939),
    highlightColor: const Color(0xff316EBE),
    secondaryHeaderColor: const Color(0xFFC2C2C2),
    scaffoldBackgroundColor: Colors.white);
ThemeData _darkMode = ThemeData(
    primaryColor: Colors.white,
    secondaryHeaderColor: const Color(0xff1d2939),
    scaffoldBackgroundColor: const Color(0xff1d2939));

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _MyAppState createState() => _MyAppState();

  /// ↓↓ ADDED
  /// InheritedWidget style accessor to our State object.
  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;
  @override
  Widget build(BuildContext context) => MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(
          title: 'Greenleaf & Bowker',
          theme: _lightMode,
          darkTheme: _darkMode,
          themeMode: _themeMode, // 2)
          home: Scaffold(
            body: StreamBuilder<User?>(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return const StandardPage(content: HomePage(), navBar: true);
                } else {
                  return const StandardPage(
                      content: LoginPage(), navBar: false);
                }
              },
            ),
          )));
  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }
}
