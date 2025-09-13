part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = ProfileLoading;
  const factory ProfileState.success(ProfileResponse response) = ProfileSuccess;
  const factory ProfileState.error(ApiErrorModel errorModel) = ProfileError;
}
