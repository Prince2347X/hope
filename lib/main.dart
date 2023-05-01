import 'package:flutter/material.dart';

import 'package:hope/users/homepage.dart';

void main() {
  runApp(const HopeApp());
}

class HopeApp extends StatefulWidget {
  const HopeApp({Key? key}) : super(key: key);

  @override
  State<HopeApp> createState() => _HopeAppState();
}

class _HopeAppState extends State<HopeApp> {
  @override
  Widget build(BuildContext context) {
    const MaterialColor myCustomColor = MaterialColor(
      0xFF0CB683,
      <int, Color>{
        50: Color(0xFFE0F9F1),
        100: Color(0xFFB3E6D9),
        200: Color(0xFF80D2BF),
        300: Color(0xFF4DBDA6),
        400: Color(0xFF26AD93),
        500: Color(0xFF0CB683),
        600: Color(0xFF0AAB7C),
        700: Color(0xFF089D70),
        800: Color(0xFF078F64),
        900: Color(0xFF067E54),
      },
    );
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFE0F0E4),
        primaryColor: const Color(0xFF0CB683),
        primarySwatch: myCustomColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const UserHomePage(),
    );
  }
}
