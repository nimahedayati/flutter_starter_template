import 'package:flutter/material.dart';
import 'package:flutter_starter_template/presentation/pages/home/home_screen.dart';
import 'package:flutter_starter_template/presentation/resources/routes_manager.dart';
import 'package:flutter_starter_template/presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(onGenerateRoute: AppRouteGenerator.getRoute, initialRoute: HomeScreen.route, theme: getApplicationTheme());
  }
}
