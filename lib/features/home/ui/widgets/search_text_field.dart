import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key, this.validator, this.hintText});
  final String? Function(String?)? validator;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide.none,
        ),
        hintText: "Search medications...",
        hintStyle: Styles.font12WhiteRegular.copyWith(color: ColorManager.grey),
        prefixIcon: Icon(Icons.search, color: ColorManager.primaryBlue),
      ),
      validator: validator,
    );
  }
}
