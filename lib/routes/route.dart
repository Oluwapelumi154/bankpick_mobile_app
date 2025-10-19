import "package:bankpick_mobile_app/components/bottom_navbar.dart";
import "package:bankpick_mobile_app/pages/auth/change_password.dart";
import "package:bankpick_mobile_app/pages/auth/signin.dart";
import "package:bankpick_mobile_app/pages/auth/signup.dart";
import "package:bankpick_mobile_app/pages/dashboard/dashboard.dart";
import "package:bankpick_mobile_app/pages/debit_cards/add_card.dart";
import "package:bankpick_mobile_app/pages/debit_cards/debit_card.dart";
import "package:bankpick_mobile_app/pages/language/language.dart";
import "package:bankpick_mobile_app/pages/onboarding/onboarding_one.dart";
import "package:bankpick_mobile_app/pages/home/splash.dart";
import "package:bankpick_mobile_app/pages/profile/edit_profile.dart";
import "package:bankpick_mobile_app/pages/profile/profile.dart";
import "package:bankpick_mobile_app/pages/settings/settings.dart";
import "package:bankpick_mobile_app/pages/statistics/statistics.dart";
import "package:bankpick_mobile_app/pages/terms_and_condition/terms_and_condition.dart";
import "package:bankpick_mobile_app/pages/transaction_history/transaction_history.dart";
import "package:bankpick_mobile_app/pages/transfer/transfer.dart";
import "package:bankpick_mobile_app/routes/route_path.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

final GoRouter routes = GoRouter(routes: [
  GoRoute(path: home, builder: (context, state) => OnboardingOne()),
  GoRoute(
      path: termsAndCondition,
      builder: (context, state) => TermsAndCondition()),
  GoRoute(path: transfer, builder: (context, state) => Transfer()),
  GoRoute(path: language, builder: (context, state) => Language()),
  GoRoute(path: changePassword, builder: (context, state) => ChangePassword()),
  GoRoute(
    path: onboardingOne,
    builder: (BuildContext context, GoRouterState state) => SplashScreen(),
  ),
  GoRoute(
      path: signUp,
      builder: (BuildContext context, GoRouterState state) => SignUp()),
  GoRoute(
      path: signIn,
      builder: (BuildContext context, GoRouterState state) => Signin()),
  GoRoute(
      path: profile,
      builder: (BuildContext context, GoRouterState state) => Profile()),
  GoRoute(
      path: editProfile,
      builder: (BuildContext context, GoRouterState state) => EditProfile()),
  GoRoute(
      path: addCard,
      builder: (BuildContext context, GoRouterState state) => AddCard()),
  ShellRoute(
      builder: (context, state, child) {
        return Scaffold(
          bottomNavigationBar: BottomNavBar(),
          body: child,
        );
      },
      routes: [
        GoRoute(
            path: transactionHistory,
            builder: (context, state) => TransactionHistory()),
        GoRoute(path: debitCards, builder: (context, state) => DebitCard()),
        GoRoute(
            path: statistics,
            builder: (BuildContext context, GoRouterState state) =>
                Statistics()),
        GoRoute(
            path: dashboard,
            builder: (BuildContext context, GoRouterState state) =>
                Dashboard()),
        GoRoute(
            path: settings,
            builder: (BuildContext context, GoRouterState state) => Settings())
      ]),
]);
