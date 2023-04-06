import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:flutter_application_1/views/chart_screen/chart_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'GothicA1',
        textTheme: const TextTheme(
          // ignore: deprecated_member_use
          caption: TextStyle(
            color: CryptoTheme.grey,
          ),
          // ignore: deprecated_member_use
          bodyText2: TextStyle(color: CryptoTheme.grey),
          // ignore: deprecated_member_use
          subtitle1: TextStyle(color: CryptoTheme.white),
        ),
        iconTheme: const IconThemeData(color: CryptoTheme.grey, size: 14),
      ),
      home: const ChartScreen(),
    );
  }
}
