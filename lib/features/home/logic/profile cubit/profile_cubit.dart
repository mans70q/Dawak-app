import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spark_flutter_app/core/networking/api_error_model.dart';
import 'package:spark_flutter_app/core/networking/api_result.dart';
import 'package:spark_flutter_app/features/home/data/models/profile_response.dart';
import 'package:spark_flutter_app/features/home/data/repos/home_repo.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final HomeRepo homeRepo;
  ProfileCubit(this.homeRepo) : super(ProfileState.initial());
  Future<void> getProfile() async {
    emit(ProfileState.loading());
    final result = await homeRepo.getProfile();
    switch (result) {
      case Success(data: final profileResponse):
        emit(ProfileState.success(profileResponse));
      case Failure(apiErrorModel: final errorModel):
        emit(ProfileState.error(errorModel));
    }
  }
}
