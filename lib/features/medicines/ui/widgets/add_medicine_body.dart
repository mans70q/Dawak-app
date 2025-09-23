import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:spark_flutter_app/core/helpers/validators.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/core/widgets/app_button.dart';
import 'package:spark_flutter_app/features/auth/ui/widgets/custom_text_form_field.dart';
import 'package:spark_flutter_app/features/home/data/models/scan_response.dart';
import 'package:spark_flutter_app/features/medicines/data/models/add_medicine_request_body.dart';
import 'package:spark_flutter_app/features/medicines/logic/cubit/add_medicine_cubit.dart';

class AddMedicineBody extends StatefulWidget {
  const AddMedicineBody({super.key, this.scanResponse, this.file});
  final ScanResponse? scanResponse;
  final File? file;

  @override
  State<AddMedicineBody> createState() => _AddMedicineBodyState();
}

class _AddMedicineBodyState extends State<AddMedicineBody> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final List<DateTime> _selectedDates = [];

  @override
  void initState() {
    if (widget.scanResponse != null) {
      nameController.text = widget.scanResponse!.data!.name ?? '';
    }
    super.initState();
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      if (_selectedDates.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Please add at least one reminder time"),
          ),
        );
        return;
      }
      // TODO: add actual data
      final requestBody = AddMedicineRequestBody(
        name: nameController.text,
        dosage: '100mg',
        frequency: '${_selectedDates.length}x/day',
        instructions: descriptionController.text,
        source: widget.file == null ? 'manual' : 'ai',
      );
      context.read<AddMedicineCubit>().addMedicine(requestBody, widget.file);
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(
              top: 15.h,
              left: 20.w,
              right: 20.w,
              bottom: 20.h,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 28.h),
                  Container(
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
                          child: Text(
                            'Medication Name',
                            style: Styles.font16BlackSemiBold,
                          ),
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
                          child: Row(
                            spacing: 5,
                            children: [
                              Icon(
                                Icons.access_alarms_rounded,
                                color: ColorManager.primaryBlue,
                                size: 20,
                              ),
                              Text(
                                'Frequency',
                                style: Styles.font16BlackSemiBold,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 5,
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.black,
                                size: 10.r,
                              ),
                              Text(
                                widget.scanResponse!.data!.frequency!,
                                style: Styles.font14BlackRegular,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            spacing: 5,
                            children: [
                              Icon(
                                Icons.warning_amber_rounded,
                                color: Colors.orange[300],
                                size: 20,
                              ),
                              Text(
                                'Possible side effects',
                                style: Styles.font16BlackSemiBold,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        ListView.separated(
                          padding: EdgeInsets.zero,
                          itemCount:
                              widget.scanResponse!.data!.sideEffects!.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          separatorBuilder:
                              (context, index) => SizedBox(height: 5.h),
                          itemBuilder: (context, index) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 5,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Icon(
                                    Icons.circle,
                                    color: Colors.black,
                                    size: 10.r,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    widget
                                        .scanResponse!
                                        .data!
                                        .sideEffects![index],
                                    style: Styles.font14BlackRegular,
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            spacing: 5,
                            children: [
                              Icon(
                                Icons.content_paste_rounded,
                                color: ColorManager.primaryBlue,
                                size: 20,
                              ),
                              Text(
                                'Instructions',
                                style: Styles.font16BlackSemiBold,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 5,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Icon(
                                  Icons.circle,
                                  color: Colors.black,
                                  size: 10.r,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  widget.scanResponse!.data!.instructions!,
                                  style: Styles.font14BlackRegular,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Align(
                        //   alignment: Alignment.centerLeft,
                        //   child: Text(
                        //     'Description',
                        //     style: Styles.font14BlackRegular,
                        //   ),
                        // ),
                        // SizedBox(height: 10.h),
                        // CustomTextFormField(
                        //   hintText: 'Medicine description',
                        //   validator: Validator.validateDescription,
                        //   isFinalField: true,
                        //   controller: descriptionController,
                        // ),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Reminder Time',
                                style: Styles.font16BlackSemiBold,
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
                                  final TimeOfDay? picked =
                                      await showTimePicker(
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
                          physics: const NeverScrollableScrollPhysics(),
                          separatorBuilder:
                              (context, index) => SizedBox(height: 12.h),
                          itemCount: _selectedDates.length,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: const EdgeInsets.all(10),
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
                                    DateFormat.jm().format(
                                      _selectedDates[index],
                                    ),
                                  ),
                                  const Spacer(),
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
                    child: BlocConsumer<AddMedicineCubit, AddMedicineState>(
                      listener: (context, state) {
                        if (state is AddMedicineSuccess) {
                          if (GoRouter.of(context).canPop()) {
                            GoRouter.of(context).pop();
                          }
                        } else if (state is AddMedicineError) {
                          showModalBottomSheet(
                            context: context,
                            builder:
                                (context) => Wrap(
                                  children: [
                                    ListTile(title: Text(state.error.message!)),
                                  ],
                                ),
                          );
                        }
                      },
                      builder: (context, state) {
                        return state is AddMedicineLoading
                            ? Center(
                              child: CircularProgressIndicator(
                                color: ColorManager.primaryBlue,
                              ),
                            )
                            : AppButton(
                              text: 'Add Medication',
                              textStyle: Styles.font20WhiteSemiBold,
                              backgroundColor: ColorManager.primaryBlue,
                              onPressed: _submit,
                            );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
