import 'package:flutter/material.dart';
import 'package:hope/users/hospital_details.dart';

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
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFE0F0E4)
      ),
      debugShowCheckedModeBanner: false,
      home: const HospitalDetails()
    );
  }
}

