import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spark_flutter_app/core/services/auth_manager.dart';
import 'package:spark_flutter_app/core/networking/api_error_model.dart';
import 'package:spark_flutter_app/core/networking/api_result.dart';
import 'package:spark_flutter_app/features/auth/data/models/register_request_body.dart';
import 'package:spark_flutter_app/features/auth/data/repos/auth_repo.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final AuthRepo authRepo;
  RegisterCubit(this.authRepo) : super(RegisterState.initial());
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void register() async {
    emit(const RegisterState.loading());
    final result = await authRepo.register(
      RegisterRequestBody(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
        firstName: firstNameController.text.trim(),
        lastName: lastNameController.text.trim(),
        phone:
            '+201234467890', //TODO: no phone field in the ui, to be fixed later.
        language: 'en',
      ),
    );
    switch (result) {
      case Success(data: final registerResponse):
        await AuthManager.handleUserToken(registerResponse.data.token);
        AuthManager.isUserLoggedIn = true;
        emit(RegisterState.success(registerResponse));
      case Failure(apiErrorModel: final errorModel):
        emit(RegisterState.error(errorModel));
    }
  }
}
