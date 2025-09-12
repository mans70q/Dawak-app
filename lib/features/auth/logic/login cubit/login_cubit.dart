import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spark_flutter_app/core/helpers/auth_manager.dart';
import 'package:spark_flutter_app/core/networking/api_error_model.dart';
import 'package:spark_flutter_app/core/networking/api_result.dart';
import 'package:spark_flutter_app/features/auth/data/models/login_request_body.dart';
import 'package:spark_flutter_app/features/auth/data/repos/auth_repo.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo authRepo;
  LoginCubit(this.authRepo) : super(LoginState.initial());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void login() async {
    emit(const LoginState.loading());
    final result = await authRepo.login(
      LoginRequestBody(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      ),
    );
    switch (result) {
      case Success(data: final loginResponse):
        await AuthManager.handleUserToken(loginResponse.data.token);
        AuthManager.isUserLoggedIn = true;
        emit(LoginState.success(loginResponse));
      case Failure(apiErrorModel: final errorModel):
        emit(LoginState.error(errorModel));
    }
  }
}
