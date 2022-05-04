// ignore_for_file: prefer_const_constructors

import 'package:bill_controll/shared/themes/app_colors.dart';
import 'package:bill_controll/shared/themes/app_text_style.dart';
import 'package:bill_controll/shared/widgets/set_label_buttons/set_label_buttons.dart';
import 'package:flutter/material.dart';

import '../../shared/widgets/botton_sheet/botton_sheet_widget.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  State<BarcodeScannerPage> createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return BottomSheetWidget(
      tittle: "Não foi possível identificar um código de barras.",
      subtitle: "Tente escanear novamente ou digite o código do seu boleto.",
      primaryLabel: "Escanear novamente",
      primaryOnPressed: () {},
      secondaryLabel: "Digitar código",
      secondaryOnPressed: () {},
    );
    // return SafeArea(
    //   top: true,
    //   bottom: true,
    //   right: true,
    //   left: true,
    //   child: RotatedBox(
    //     quarterTurns: 1,
    //     child: Scaffold(
    //       appBar: AppBar(
    //         centerTitle: true,
    //         title: Text(
    //           'Barcode Scanner',
    //           style: TextStyles.buttonBackground,
    //         ),
    //         backgroundColor: Colors.black,
    //         leading: BackButton(
    //           color: AppColors.background,
    //         ),
    //       ),
    //       body: Column(
    //         children: [
    //           Expanded(
    //             child: Container(color: Colors.black.withOpacity(0.8)),
    //           ),
    //           Expanded(
    //             flex: 2,
    //             child: Container(color: Colors.transparent),
    //           ),
    //           Expanded(
    //             child: Container(color: Colors.black.withOpacity(0.8)),
    //           ),
    //         ],
    //       ),
    //       bottomNavigationBar: SetLabelButtons(
    //         primaryLabel: "Inserir código do boleto",
    //         primaryOnPressed: () {},
    //         secondaryLabel: "Adicionar da galeria",
    //         secondaryOnPressed: () {},
    //       ),
    //     ),
    //   ),
    // );
  }
}
