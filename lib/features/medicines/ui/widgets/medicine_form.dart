import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/helpers/validators.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/features/auth/ui/widgets/custom_text_form_field.dart';
import 'add_time_button.dart';
import 'reminder_time_list.dart';

class MedicineForm extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController descriptionController;
  final List<DateTime> selectedDates;

  const MedicineForm({
    super.key,
    required this.nameController,
    required this.descriptionController,
    required this.selectedDates,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: ColorManager.lightBlue.withAlpha(178),
        border: Border.all(color: Colors.black54, width: 0.5),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Medication Name', style: Styles.font14BlackRegular),
          ),
          SizedBox(height: 10.h),
          CustomTextFormField(
            hintText: 'e.g., Augmentin',
            validator: Validator.validateName,
            isFinalField: true,
            controller: nameController,
          ),
          SizedBox(height: 20.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Description', style: Styles.font14BlackRegular),
          ),
          SizedBox(height: 10.h),
          CustomTextFormField(
            hintText: 'Medicine description',
            validator: Validator.validateDescription,
            isFinalField: true,
            controller: descriptionController,
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Reminder Time', style: Styles.font14BlackRegular),
              AddTimeButton(selectedDates: selectedDates),
            ],
          ),
          ReminderTimeList(selectedDates: selectedDates),
        ],
      ),
    );
  }
}
