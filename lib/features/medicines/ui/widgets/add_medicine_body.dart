import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:spark_flutter_app/core/helpers/validators.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/core/widgets/app_button.dart';
import 'package:spark_flutter_app/features/auth/ui/widgets/custom_text_form_field.dart';
import 'package:spark_flutter_app/features/home/data/models/scan_response.dart';

class AddMedicineBody extends StatefulWidget {
  const AddMedicineBody({super.key, required this.scanResponse});
  final ScanResponse scanResponse;

  @override
  State<AddMedicineBody> createState() => _AddMedicineBodyState();
}

class _AddMedicineBodyState extends State<AddMedicineBody> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final List<DateTime> _selectedDates = [];
  @override
  void initState() {
    nameController.text = widget.scanResponse.data!.name!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(
              top: 15.h,
              left: 20.w,
              right: 20.w,
              bottom: 20.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 28.h),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: ColorManager.lightBlue.withAlpha(178),
                    border: Border.all(color: Colors.black54, width: 0.5),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Medication Name',
                          style: Styles.font14BlackRegular,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      CustomTextFormField(
                        hintText: 'e.g., Augmentin',
                        validator: Validator.validatePassword,
                        isFinalField: true,
                        controller: nameController,
                      ),
                      SizedBox(height: 20.h),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Description',
                          style: Styles.font14BlackRegular,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      CustomTextFormField(
                        hintText: 'Medicine Desscription',
                        validator: Validator.validatePassword,
                        isFinalField: true,
                        controller: descriptionController,
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Reminder Time',
                              style: Styles.font14BlackRegular,
                            ),
                          ),
                          SizedBox(
                            height: 25.h,
                            width: 80.w,
                            child: AppButton(
                              text: 'Add Time',
                              textStyle: Styles.font12WhiteRegular,
                              radius: 5.r,
                              onPressed: () async {
                                final TimeOfDay? picked = await showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.now(),
                                );
                                if (picked != null) {
                                  setState(() {
                                    _selectedDates.add(
                                      DateTime(
                                        DateTime.now().year,
                                        DateTime.now().month,
                                        DateTime.now().day,
                                        picked.hour,
                                        picked.minute,
                                      ),
                                    );
                                  });
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        separatorBuilder:
                            (context, index) => SizedBox(height: 12.h),
                        itemCount: _selectedDates.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.black54,
                                width: 0.5,
                              ),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  DateFormat.jm().format(_selectedDates[index]),
                                ),
                                Spacer(),
                                InkWell(
                                  borderRadius: BorderRadius.circular(50.r),
                                  onTap: () {
                                    setState(() {
                                      _selectedDates.removeAt(index);
                                    });
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.black,
                                    size: 20.sp,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  width: double.infinity,
                  height: 52.h,
                  child: AppButton(
                    text: 'Addd Medication',
                    textStyle: Styles.font20WhiteSemiBold,
                    backgroundColor: ColorManager.primaryBlue,
                    onPressed: () {
                      if (Navigator.of(context).canPop()) {
                        GoRouter.of(context).pop();
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
