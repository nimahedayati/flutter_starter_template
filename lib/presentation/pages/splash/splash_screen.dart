import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_starter_template/app/app_preferences.dart';
import 'package:flutter_starter_template/app/di.dart';
import 'package:flutter_starter_template/presentation/pages/home/home_screen.dart';
import 'package:flutter_starter_template/presentation/resources/assets_manager.dart';
import 'package:flutter_starter_template/presentation/resources/colors_manager.dart';

class SplashScreen extends StatefulWidget {
  static const route = '/splash';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;
  final AppPreferences _appPreferences = instance<AppPreferences>();

  _startDelay() {
    _timer = Timer(const Duration(seconds: 2), _goNext);
  }

  _goNext() async {
    bool isUserLoggedIn = await _appPreferences.isUserLoggedIn();

    if (isUserLoggedIn && mounted) {
      Navigator.pushReplacementNamed(context, HomeScreen.route);
    } else {
      //Navigate to LoginScreen
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.primary, body: const Center(child: Image(image: AssetImage(AppImageAssets.splashLogo))));
  }

  @override
  void initState() {
    _startDelay();

    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();

    super.dispose();
  }
}
