// ignore_for_file: prefer_const_constructors

import 'package:bill_controll/shared/themes/app_colors.dart';
import 'package:bill_controll/shared/themes/app_images.dart';
import 'package:bill_controll/shared/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialLoginButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.fromBorderSide(
            BorderSide(color: AppColors.stroke),
          ),
          color: AppColors.shape,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.google),
                  SizedBox(width: 16),
                  Container(
                    width: 1,
                    height: 56,
                    color: AppColors.stroke,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Entrar com Google",
                    style: TextStyles.buttonGray,
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
