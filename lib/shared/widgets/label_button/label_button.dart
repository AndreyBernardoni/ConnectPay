import 'package:bill_controll/shared/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class LabelButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  const LabelButton({Key? key, required this.label, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyles.buttonHeading,
        ),
      ),
    );
  }
}
