import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:hope/router/config.dart';
import 'package:hope/utils/utils.dart';

void main() {
  runApp(
    const ProviderScope(
      observers: [StateLogger()],
      child: HopeApp(),
    ),
  );
}

class HopeApp extends ConsumerWidget {
  const HopeApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    const MaterialColor myCustomColor = MaterialColor(
      0xFF0CB683,
      <int, Color>{
        50: Color(0xFFE0F9F1),
        100: Color(0xFFB3E6D9),
        200: Color(0xFF80D2BF),
        300: Color(0xFF4DBDA6),
        400: Color(0xFF26AD93),
        500: Color(0xFF0CB683),
        600: Color(0xFF0AAB7C),
        700: Color(0xFF089D70),
        800: Color(0xFF078F64),
        900: Color(0xFF067E54),
      },
    );
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFE0F0E4),
        primaryColor: const Color(0xFF0CB683),
        primarySwatch: myCustomColor,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
