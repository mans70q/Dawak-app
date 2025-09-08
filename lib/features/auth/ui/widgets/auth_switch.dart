import 'package:flutter/material.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';

class AuthSwitch extends StatelessWidget {
  const AuthSwitch({
    super.key,
    required this.text,
    required this.buttonText,
    this.onPressed,
  });
  final String text;
  final String buttonText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: Styles.font12BlackRegular),
        GestureDetector(
          onTap: onPressed,
          child: Text(" $buttonText", style: Styles.font12BlueBold),
        ),
      ],
    );
  }
}
