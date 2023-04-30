import 'package:flutter/material.dart';

import 'package:hope/objects/hospital.dart';

class HospitalCard extends StatelessWidget {
  final HospitalObject hospital;
  const HospitalCard({super.key, required this.hospital});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 4.8,
              child: Image.network(
                hospital.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          hospital.name,
                          style: const TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          hospital.address,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        FloatingActionButton(
                          mini: true,
                          onPressed: () {},
                          child: const Icon(
                            Icons.navigation,
                            color: Colors.white,
                          ),
                        ),
                        //TODO: Implement distance calculation
                        const Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text('13.8 Km'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        FloatingActionButton(
                          mini: true,
                          onPressed: () {},
                          child: const Icon(
                            Icons.call,
                            color: Colors.white,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text('Call'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
