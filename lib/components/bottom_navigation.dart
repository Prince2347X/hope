import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:hope/screens/pages/clinics_page.dart';
import 'package:hope/screens/pages/hospitals_page.dart';
import 'package:hope/screens/pages/others_page.dart';
import 'package:hope/screens/pages/pharmacy_page.dart';


// TODO (prince2347x) : Complete the bottom navigation bar
class ScaffoldWithBottomNavBar extends StatefulWidget {
  const ScaffoldWithBottomNavBar({required this.child, super.key});
  final Widget child;

  @override
  State<ScaffoldWithBottomNavBar> createState() => _ScaffoldWithBottomNavBarState();
}

class _ScaffoldWithBottomNavBarState extends State<ScaffoldWithBottomNavBar> {
  int _selectedIndex = 0;

  void _onTap(BuildContext context, int index) {
    if (index == _selectedIndex) {
      return;
    }

    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        context.go(HospitalsPage.path);
        break;
      case 1:
        context.go(ClinicsPage.path);
        break;
      case 2:
        context.go(PharmacyPage.path);
        break;
      case 3:
        context.go(OthersPage.path);
        break;
      default:
        setState(() => _selectedIndex = 0);
        context.goNamed(HospitalsPage.name);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            label: 'Hospitals',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            label: 'Clinics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            label: 'Pharmacy',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            label: 'Others',
          ),
        ],
        onTap: (index) {
          _onTap(context, index);
        },
      ),
    );
  }
}
