import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    this.validator,
    this.hintText,
    this.controller,
    this.onChanged,
    this.onSubmitted,
    this.border,
  });

  final String? Function(String?)? validator;
  final String? hintText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final InputBorder? border;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
      textInputAction: TextInputAction.search,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        enabledBorder:
            border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide.none,
            ),
        focusedBorder:
            border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide.none,
            ),
        border:
            border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide.none,
            ),
        hintText: hintText ?? "Search...",
        hintStyle: Styles.font12WhiteRegular.copyWith(color: ColorManager.grey),
        prefixIcon: Transform.scale(
          scale: 0.5,
          child: SvgPicture.asset(Assets.searchLens),
        ),
      ),
    );
  }
}
