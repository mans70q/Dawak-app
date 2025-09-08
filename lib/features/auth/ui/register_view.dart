import 'package:flutter/material.dart';
import 'package:spark_flutter_app/features/auth/ui/widgets/register_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: RegisterBody());
  }
}
