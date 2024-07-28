import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_app/config/util/custom_widget.dart';
import 'package:flutter_base_app/config/route/app_route.gr.dart';
import 'package:flutter_base_app/config/util/app_theme.dart';

@RoutePage()
class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      context.router.replace(const LoginPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return bodyView();
  }

  Widget bodyView() {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            bottom: MediaQuery.of(context).padding.bottom + 24),
        decoration: const BoxDecoration(color: AppTheme.bgColor),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Image.asset(
                    imagePaths("ic_spotify"),
                    width: 245,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'created by rizkyhamdana',
                textAlign: TextAlign.center,
                style: AppTheme.subtitle3(color: AppTheme.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
