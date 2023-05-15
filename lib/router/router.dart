import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:hope/components/bottom_navigation.dart';
import 'package:hope/screens/login.dart';
import 'package:hope/screens/onboarding.dart';
import 'package:hope/screens/pages/clinics_page.dart';
import 'package:hope/screens/pages/hospitals_page.dart';
import 'package:hope/screens/pages/others_page.dart';
import 'package:hope/screens/pages/pharmacy_page.dart';

final _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shellNavigatorKey');

class RouterNotifier extends AutoDisposeAsyncNotifier<void> implements Listenable {
  VoidCallback? routerListener;

  List<RouteBase> get routes => [
        GoRoute(
          name: UserOnboardingPage.name,
          path: UserOnboardingPage.path,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const UserOnboardingPage(),
          ),
        ),
        GoRoute(
          name: UserLoginPage.name,
          path: UserLoginPage.path,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const UserLoginPage(),
          ),
        ),
        // ShellRoute for fixed bottom navigation bar
        ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (context, state, child) {
            return ScaffoldWithBottomNavBar(child: child);
          },
          routes: [
            GoRoute(
              name: HospitalsPage.name,
              path: HospitalsPage.path,
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: const HospitalsPage(),
              ),
            ),
            GoRoute(
              name: ClinicsPage.name,
              path: ClinicsPage.path,
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: const ClinicsPage(),
              ),
            ),
            GoRoute(
              name: PharmacyPage.name,
              path: PharmacyPage.path,
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: const PharmacyPage(),
              ),
            ),
            GoRoute(
              name: OthersPage.name,
              path: OthersPage.path,
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: const OthersPage(),
              ),
            )
          ],
        ),
      ];

  @override
  void addListener(VoidCallback listener) {
    routerListener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    routerListener = null;
  }

  @override
  Future<void> build() async {
    ref.listenSelf((_, __) {
      if (state.isLoading) return;
      routerListener?.call();
    });
  }
}

final routerNotifierProvider = AutoDisposeAsyncNotifierProvider<RouterNotifier, void>(() {
  return RouterNotifier();
});
