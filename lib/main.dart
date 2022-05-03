// ignore_for_file: prefer_const_constructors

import 'package:bill_controll/modules/home/home_page.dart';
import 'package:bill_controll/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

import 'modules/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BillFlow',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      home: HomePage(),
    );
  }
}
