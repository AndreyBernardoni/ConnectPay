import 'package:bill_controll/shared/themes/app_text_style.dart';
import 'package:bill_controll/shared/widgets/vertical_divider/vertical_divider_widget.dart';
import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';
import '../label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;
  final bool enablePrimaryColor;
  final bool enableSecondaryColor;
  const SetLabelButtons({
    Key? key,
    required this.primaryLabel,
    required this.primaryOnPressed,
    required this.secondaryLabel,
    required this.secondaryOnPressed,
    this.enablePrimaryColor = false,
    this.enableSecondaryColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      height: 57,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            thickness: 1,
            height: 1,
            color: AppColors.stroke,
          ),
          Container(
            height: 56,
            child: Row(
              children: [
                Expanded(
                    child: LabelButton(
                  label: primaryLabel,
                  onPressed: primaryOnPressed,
                  style: enablePrimaryColor ? TextStyles.buttonPrimary : null,
                )),
                VerticalDividerWidget(),
                Expanded(
                    child: LabelButton(
                  label: secondaryLabel,
                  onPressed: secondaryOnPressed,
                  style: enableSecondaryColor ? TextStyles.buttonPrimary : null,
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
