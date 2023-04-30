import 'package:flutter/material.dart';

import 'package:hope/components/search_bar.dart';

class UserHome extends StatelessWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: const TextStyle(color: Colors.black),
        leading: const Icon(Icons.location_on_outlined,size: 34, color: Color(0xFF0CB683),),
        actions: const [Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.account_circle_rounded,size: 34,color: Color(0xFF0CB683),),
        )],
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Text("Boys Hostel"),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            const Text("Mujgahan, Raipur")
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBar(
              callback: (value) {},
            ),
            Row(children: const <Widget>[
              Expanded(
                  child: Divider(
                endIndent: 12,
                indent: 24,
                thickness: 1.4,
              )),
              Text("Hospitals around you"),
              Expanded(
                  child: Divider(
                endIndent: 24,
                indent: 12,
                thickness: 1.4,
              )),
            ]),
            hospitalCard(context,"assets/images/ramKrishna.jpg", "Ram Krishna care", "Aurobindo Enclave, Dhamtari Rd, Pachpedi naka, Raipur, CG, 492001", "13.8 Km"),
            hospitalCard(context,"assets/images/aiimsRaipur.jpg", "AIIMS Raipur", "Gate No, 1, Great Eastern Rd, opposite Gurudwara, AIIMS Campus, Tatibandh, Raipur, Chhattisgarh 492099", "20 Km"),
            hospitalCard(context,"assets/images/vyCare.jpg","VY Care","Kamal Vihar, Near Sector 12, New Dhamtari Rd, Dunda, Chhattisgarh 492001" ,"17.5 km"),
          ],
        ),
      ),
    );
  }

  Widget hospitalCard(BuildContext context, String image, String name, String address, String dist) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height/4,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
               // alignment: const Alignment(0, -0.3),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 12,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        Text(address),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FloatingActionButton(
                            mini: true,
                            onPressed: () {},
                            child: const Icon(Icons.navigation, color: Colors.white,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(dist),
                          ),
                        ],
                      )),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FloatingActionButton(
                            mini: true,
                            onPressed: () {},
                            child: const Icon(Icons.call, color: Colors.white,),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text("Call"),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
