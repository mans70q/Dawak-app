import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/core/widgets/app_button.dart';
import 'package:spark_flutter_app/core/widgets/shared_dialog.dart';
import 'package:spark_flutter_app/features/auth/ui/widgets/custom_text_form_field.dart';

class AddFamilyMemberBody extends StatelessWidget {
  const AddFamilyMemberBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(Assets.addFamilyMemberIllustration, height: 200.h),
            const SizedBox(height: 16),
            const Text(
              'Add a family member to manage or share medication reminders.',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 24),
            CustomTextFormField(hintText: 'AH365@gmail.com'),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: AppButton(
                onPressed: () {
                  SharedDialog.show(
                    context: context,
                    title: 'Success',
                    confirmText: 'confirm',
                    content: 'Family member added successfully!',
                    icon: Icons.check_circle_outline,
                    onConfirm: () {},
                  );
                },
                text: '+ Add',
                textStyle: Styles.font16WhiteMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
