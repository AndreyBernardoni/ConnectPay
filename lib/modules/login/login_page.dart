// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:bill_controll/shared/widgets/social_login/social_login_button.dart';
import 'package:flutter/material.dart';
import 'package:bill_controll/modules/login/login_controller.dart';
import 'package:bill_controll/shared/themes/app_colors.dart';
import 'package:bill_controll/shared/themes/app_images.dart';
import 'package:bill_controll/shared/themes/app_text_style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.36,
              color: AppColors.primary,
            ),
            Positioned(
              child: Image.asset(
                AppImages.person,
                width: 208,
                height: 300,
              ),
              right: 0,
              left: 0,
              top: 40,
            ),
            Positioned(
              bottom: size.height * 0.1,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.logomini,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 70, right: 70, top: 10),
                    child: Text(
                      "Organize todos seus boletos em um só App!",
                      style: TextStyles.titleHome,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 40),
                    child: SocialLoginButton(
                      onTap: () => controller.googleSignIn(context),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
