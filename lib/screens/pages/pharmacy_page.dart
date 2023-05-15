import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class PharmacyPage extends ConsumerWidget {
  const PharmacyPage({super.key});

  static const name = 'Pharmacy';
  static const path = '/pharmacy';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Center(
      child: Text(
        'Pharmacy Page',
      ),
    );
  }
}
