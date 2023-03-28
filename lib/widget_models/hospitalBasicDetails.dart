import 'package:flutter/material.dart';

Widget hospitalNameAndAddress() {
  return Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Ram Krishna Care", style: TextStyle(

          )),
          SizedBox(
            width: 350,
              child: Text(
            "Aurobindo Enclave, Dhamtari Rd, Pachpedi Naka, Raipur, Chhattisgarh 492001",
            softWrap: true,
          ))
        ],
      ),
      Column(
        children: [
          MaterialButton(
              onPressed: () {},
              shape: const CircleBorder(side: BorderSide(color: Colors.black,)),
              child: const Icon(Icons.navigation, color: Colors.white,))
        ],
      )
    ],
  );
}
