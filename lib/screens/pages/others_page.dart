import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class OthersPage extends ConsumerWidget {
  const OthersPage({super.key});

  static const name = 'Others';
  static const path = '/others';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Center(
      child: Text(
        'Others Page',
      ),
    );
  }
}
