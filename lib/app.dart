import 'package:flutter/material.dart';
import 'package:loopify/navigation_dashboard.dart';
import 'package:loopify/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loopify App',
      debugShowCheckedModeBanner: false,
      theme: ATheme.lightModeTheme,
      home: NavigationDashboard(),
    );
  }
}
