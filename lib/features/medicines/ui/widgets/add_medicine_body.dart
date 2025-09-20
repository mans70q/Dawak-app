import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/core/widgets/app_button.dart';
import 'package:spark_flutter_app/features/home/data/models/scan_response.dart';
import 'package:spark_flutter_app/features/medicines/data/models/add_medicine_request_body.dart';
import 'package:spark_flutter_app/features/medicines/logic/cubit/add_medicine_cubit.dart';
import 'package:spark_flutter_app/features/medicines/ui/widgets/medicine_form.dart';

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
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              MedicineForm(
                nameController: nameController,
                descriptionController: descriptionController,
                selectedDates: _selectedDates,
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
  }
}
