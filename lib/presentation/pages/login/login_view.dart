import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_app/config/util/app_theme.dart';
import 'package:flutter_base_app/config/util/custom_widget.dart';
import 'package:flutter_base_app/config/route/app_route.gr.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Image.asset(
                  imagePaths("ic_spotify_white"),
                  width: 100,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Millions of Songs\nFree on Spotify',
              style: AppTheme.subtitle1(
                color: AppTheme.white,
              ).copyWith(fontSize: 28),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 64,
            ),
            Container(
              height: 48,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
              ),
              child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: AppTheme.green),
                onPressed: () {},
                child: Text(
                  "Sign up Free",
                  style: AppTheme.subtitle1(color: Colors.black)
                      .copyWith(fontWeight: FontWeight.w700, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
              ),
              child: Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(48),
                    border: Border.all(color: AppTheme.white)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.bgColor),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset(
                        imagePaths('ic_phone'),
                        width: 24,
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Continue with phone number",
                            style: AppTheme.subtitle1(color: Colors.white)
                                .copyWith(
                                    fontWeight: FontWeight.w700, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
              ),
              child: Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(48),
                    border: Border.all(color: AppTheme.white)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.bgColor),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset(
                        imagePaths('ic_google'),
                        width: 24,
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Continue with Google",
                            style: AppTheme.subtitle1(color: Colors.white)
                                .copyWith(
                                    fontWeight: FontWeight.w700, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
              ),
              child: Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(48),
                    border: Border.all(color: AppTheme.white)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.bgColor),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset(
                        imagePaths('ic_facebook'),
                        width: 24,
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Continue with Facebook",
                            style: AppTheme.subtitle1(color: Colors.white)
                                .copyWith(
                                    fontWeight: FontWeight.w700, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextButton(
                onPressed: () {
                  context.router.push(HomePage());
                },
                child: Text(
                  "Log in",
                  style: AppTheme.subtitle1(color: Colors.white)
                      .copyWith(fontWeight: FontWeight.w700, fontSize: 16),
                )),
          ],
        ),
      ),
    );
  }
}
