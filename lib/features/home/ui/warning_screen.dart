import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spark_flutter_app/core/widgets/app_body.dart';
import 'package:spark_flutter_app/features/home/logic/warning_cubit/warning_cubit.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/warning_appbar.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/warning_body.dart';

class WarningScreen extends StatefulWidget {
  const WarningScreen({super.key});

  @override
  State<WarningScreen> createState() => _WarningScreenState();
}

class _WarningScreenState extends State<WarningScreen> {
  @override
  void initState() {
    super.initState();
    context.read<WarningCubit>().fetchWarnings(page: 1, limit: 30);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [WarningAppbar(), AppBody(child: WarningBody())]),
    );
  }
}
