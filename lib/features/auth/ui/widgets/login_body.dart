import 'package:flutter/material.dart';
import 'package:spark_flutter_app/core/widgets/auth_appbar.dart';
import 'package:spark_flutter_app/features/auth/ui/widgets/login_form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthAppbar(
          title: 'Login',
          subtitle:
              "Welcome back to Dawak! Your smart medication assistant is ready",
        ),
        LoginForm(),
      ],
    );
  }
}
