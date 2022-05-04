// ignore_for_file: prefer_const_constructors

import 'package:bill_controll/modules/barcode_scanner/barcode_scanner_page.dart';
import 'package:bill_controll/modules/home/home_page.dart';
import 'package:bill_controll/modules/login/login_page.dart';
import 'package:bill_controll/modules/splash/splash_page.dart';
import 'package:bill_controll/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BillFlow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        primarySwatch: Colors.orange,
      ),
      initialRoute: "/splash",
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/splash": (context) => SplashPage(),
        "/barcode_scanner": (context) => BarcodeScannerPage(),
      },
    );
  }
}
