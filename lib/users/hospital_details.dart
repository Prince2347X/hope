import 'package:flutter/material.dart';
import 'package:hope/constants.dart';

class HospitalDetailsPage extends StatefulWidget {
  const HospitalDetailsPage({Key? key}) : super(key: key);

  @override
  State<HospitalDetailsPage> createState() => _HospitalDetailsPageState();
}

class _HospitalDetailsPageState extends State<HospitalDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset(
            'assets/images/ramKrishna.jpg',
            width: MediaQuery.of(context).size.width,
            height: 150,
            fit: BoxFit.fitWidth,
            alignment: Alignment.center,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'RamKrishna Care Hospital',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 350,
                        child: Text(
                          'Aurobindo Enclave, Dhamtari Rd, Pachpedi Naka, Raipur, Chhattisgarh 492001',
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      FloatingActionButton(
                        onPressed: () {},
                        mini: true,
                        child: Transform.rotate(
                          angle: 45 * 3.1415926535 / 180,
                          child: const Icon(
                            Icons.navigation_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Text('13.8 km'),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      FloatingActionButton(
                        onPressed: () {},
                        mini: true,
                        child: const Icon(Icons.call, color: Colors.white),
                      ),
                      const Text('Call'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
            child: Divider(
              thickness: 0.5,
              color: primaryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14),
            child: Row(
              children: [
                Icon(Icons.local_hospital, color: primaryColor),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Ambulance',
                  textScaleFactor: 1.5,
                ),
                const Spacer(),
                Chip(
                  backgroundColor: Colors.white,
                  label: Row(
                    children: [
                      Icon(
                        Icons.online_prediction,
                        color: primaryColor,
                        size: 20,
                      ),
                      const Text('Available'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14),
            child: Row(
              children: [
                Icon(Icons.person_2_rounded, color: primaryColor),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Doctors',
                  textScaleFactor: 1.5,
                ),
                const Spacer(),
                Chip(
                  backgroundColor: Colors.white,
                  label: Row(
                    children: [
                      Icon(
                        Icons.online_prediction,
                        color: primaryColor,
                        size: 20,
                      ),
                      const Text('Available'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4),
            child: Divider(
              thickness: 0.5,
              color: primaryColor,
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Specialities',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                softWrap: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Wrap(
              spacing: 4,
              runSpacing: 4,
              children: generateChips(
                [
                  'Cardiology',
                  'Neurology',
                  'ENT',
                  ' Gynaecology',
                  'Orthopedics',
                  'General Surgery',
                  'Critical Care',
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4),
            child: Divider(
              thickness: 0.5,
              color: primaryColor,
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Doctors',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                softWrap: true,
              ),
            ),
          ),
          doctorCard('Dr. Prince Raj', 'Cardiologist', 'MBBS', true),
          doctorCard('Dr.Purvika Jain', 'Gynaecologist', 'B.Tech', false),
          doctorCard('Dr.Sujal Singh', 'Neurologist', 'MBBS', true),
          doctorCard('Dr.Parth Singh', 'Urologist', 'MBBS', false),
        ],
      ),
    );
  }

  List<Widget> generateChips(List<String> specialities) {
    List<Widget> chips = [];
    for (String speciality in specialities) {
      chips.add(
        Chip(
          backgroundColor: Colors.white,
          label: Text(speciality),
        ),
      );
    }
    return chips;
  }

  Widget doctorCard(
    String name,
    String speciality,
    String qualification,
    bool isAvailable,
  ) {
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
              child: const Icon(
                Icons.person,
                color: Colors.white,
                size: 34,
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
                    color: isAvailable ? primaryColor : Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ],
        ),
        title: Text(name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(speciality),
            Text(qualification),
          ],
        ),
        trailing: Icon(Icons.calendar_month_rounded, color: primaryColor),
      ),
    );
  }
}
