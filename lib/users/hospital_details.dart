import 'package:flutter/material.dart';

import 'package:hope/widget_models/hospitalBasicDetails.dart';


class HospitalDetails extends StatelessWidget {
  const HospitalDetails({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Column(
          children: [
            Image.asset(
              'assets/images/ram_krishna.png',
              width: MediaQuery.of(context).size.width,
              height: 150,
              fit: BoxFit.fitWidth,
              alignment: Alignment.center,
            ),
            hospitalNameAndAddress(),

          ],
        ),
    );
  }
}
