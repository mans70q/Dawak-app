import 'package:flutter/material.dart';
import 'package:spark_flutter_app/core/models/medicine.dart';
import 'package:spark_flutter_app/features/medicines/ui/medicine_details_appbar.dart';
import 'package:spark_flutter_app/features/medicines/ui/widgets/medicine_details_body.dart';

class MedicineDetailsScreen extends StatelessWidget {
  const MedicineDetailsScreen({super.key, required this.medicine});
  final Medicine medicine;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MedicineDetailsAppbar(medicine: medicine),
          MedicineDetailsBody(medicine: medicine),
        ],
      ),
    );
  }
}
