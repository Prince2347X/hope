import 'package:flutter/material.dart';

import 'package:hope/users/login.dart';
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
    return const MaterialApp(
      home: UserLoginPage()
    );
  }
}

