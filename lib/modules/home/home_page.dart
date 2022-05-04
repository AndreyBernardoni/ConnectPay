// ignore_for_file: prefer_const_constructors

import 'package:bill_controll/modules/home/home_controller.dart';
import 'package:bill_controll/shared/themes/app_colors.dart';
import 'package:bill_controll/shared/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController();
  final pages = [
    Container(
      color: AppColors.primary,
    ),
    Container(
      color: AppColors.delete,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          height: 152,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(
                TextSpan(
                  text: "Olá, ",
                  style: TextStyles.titleRegular,
                  children: [
                    TextSpan(
                      text: "Andrey",
                      style: TextStyles.titleBoldBackground,
                    ),
                  ],
                ),
              ),
              subtitle: Text(
                "Seja bem-vindo ao ConnectPay",
                style: TextStyles.captionShape,
              ),
              trailing: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(152),
      ),
      body: pages[homeController.currentPage],
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                homeController.setPage(0);
                setState(() {});
              },
              icon: Icon(Icons.home),
              color: AppColors.primary,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                child: Icon(
                  Icons.add_box_outlined,
                  color: AppColors.background,
                ),
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                homeController.setPage(1);
                setState(() {});
              },
              icon: Icon(Icons.description_outlined),
              color: AppColors.body,
            ),
          ],
        ),
      ),
    );
  }
}
