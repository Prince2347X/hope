import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class ClinicsPage extends ConsumerWidget {
  const ClinicsPage({super.key});

  static const name = 'Clinics';
  static const path = '/clinics';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Center(
      child: Text(
        'Clinic Page',
      ),
    );
  }
}
