// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bill_controll/shared/auth/auth_controller.dart';
import 'package:bill_controll/shared/themes/app_colors.dart';
import 'package:bill_controll/shared/themes/app_images.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.currentUser(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Center(
            child: Image.asset(AppImages.logoFull),
          ),
          Center(
            child: Image.asset(AppImages.union),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "Connect",
                      style: TextStyle(color: AppColors.stroke, fontSize: 50),
                    ),
                    TextSpan(
                      text: "Pay",
                      style: TextStyle(color: AppColors.primary, fontSize: 50),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 500),
            child: Center(
              child: CircularProgressIndicator(
                color: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
