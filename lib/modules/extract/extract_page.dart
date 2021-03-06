import 'package:flutter/material.dart';
import 'package:bill_controll/shared/themes/app_colors.dart';
import 'package:bill_controll/shared/widgets/boleto_list/boleto_list_controller.dart';
import 'package:bill_controll/shared/widgets/boleto_list/boleto_list_widget.dart';

import '../../shared/themes/app_colors.dart';
import '../../shared/themes/app_text_style.dart';

class ExtractPage extends StatefulWidget {
  const ExtractPage({Key? key}) : super(key: key);

  @override
  State<ExtractPage> createState() => _ExtractPageState();
}

class _ExtractPageState extends State<ExtractPage> {
  final controller = BoletoListController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 24,
            right: 24,
            left: 24,
          ),
          child: Row(
            children: [
              Text(
                'Meus extratos',
                style: TextStyles.titleBoldHeading,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 24,
            horizontal: 24,
          ),
          child: Divider(
            color: AppColors.stroke,
            thickness: 1,
            height: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: BoletoListWidget(
            controller: controller,
          ),
        ),
      ],
    );
  }
}
