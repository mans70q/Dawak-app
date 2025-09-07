import 'package:flutter/material.dart';
import 'package:spark_flutter_app/features/auth/ui/widgets/login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LoginBody(), resizeToAvoidBottomInset: true);
  }
}
