import 'package:flutter/material.dart';
import 'package:spark_flutter_app/core/widgets/app_body.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/warning_appbar.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/warning_body.dart';

class WarningScreen extends StatelessWidget {
  const WarningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [WarningAppbar(), AppBody(child: WarningBody())]),
    );
  }
}
