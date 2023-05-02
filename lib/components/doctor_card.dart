import 'package:flutter/material.dart';
import 'package:hope/constants.dart';
import 'package:hope/objects/doctor.dart';

class DoctorCard extends StatelessWidget {
  final DoctorObject doctor;

  const DoctorCard({Key? key, required this.doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0, top: 4),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        tileColor: Colors.white,
        leading: Stack(
          children: [
            CircleAvatar(
              backgroundColor: primaryColor,
              child: Image.network(
                doctor.imageUrl,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 7,
                child: Container(
                  height: 10,
                  decoration: BoxDecoration(
                    color: doctor.isAvailable ? primaryColor : Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ],
        ),
        title: Text(doctor.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(doctor.specializations[0]),
            Text(doctor.qualification),
          ],
        ),
        trailing: IconButton(
          onPressed: () {
            //TODO: Implement appointment scheduling
          },
          icon: Icon(
            Icons.calendar_month_rounded,
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
