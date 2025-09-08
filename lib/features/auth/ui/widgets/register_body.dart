import 'package:flutter/material.dart';
import 'package:spark_flutter_app/core/widgets/auth_appbar.dart';
import 'package:spark_flutter_app/features/auth/ui/widgets/register_form.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthAppbar(
          title: 'Sign Up',
          subtitle:
              'Start your journey with Dawak and stay safe with your medicines',
        ),
        RegisterForm(),
      ],
    );
  }
}
