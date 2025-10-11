import 'package:bankpick_mobile_app/themes/theme.dart';
import 'package:flutter/material.dart';
import "package:bankpick_mobile_app/routes/route.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        routerConfig: routes);
  }
}
