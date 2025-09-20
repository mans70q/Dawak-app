import 'dart:io';

import 'package:spark_flutter_app/features/home/data/models/scan_response.dart';

class AddMedicineArgs {
  final ScanResponse? scanResponse;
  final File? file;

  AddMedicineArgs({this.scanResponse, this.file});
}
