import 'package:flutter/material.dart';
import 'package:hope/constants.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 4,
      ),
      child: Divider(
        thickness: 0.5,
        color: primaryColor,
      ),
    );
  }
}
