// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_medicine_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddMedicineState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddMedicineState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddMedicineState()';
}


}

/// @nodoc
class $AddMedicineStateCopyWith<$Res>  {
$AddMedicineStateCopyWith(AddMedicineState _, $Res Function(AddMedicineState) __);
}


/// Adds pattern-matching-related methods to [AddMedicineState].
extension AddMedicineStatePatterns on AddMedicineState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( AddMedicineLoading value)?  loading,TResult Function( AddMedicineSuccess value)?  success,TResult Function( AddMedicineError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case AddMedicineLoading() when loading != null:
return loading(_that);case AddMedicineSuccess() when success != null:
return success(_that);case AddMedicineError() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( AddMedicineLoading value)  loading,required TResult Function( AddMedicineSuccess value)  success,required TResult Function( AddMedicineError value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case AddMedicineLoading():
return loading(_that);case AddMedicineSuccess():
return success(_that);case AddMedicineError():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( AddMedicineLoading value)?  loading,TResult? Function( AddMedicineSuccess value)?  success,TResult? Function( AddMedicineError value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case AddMedicineLoading() when loading != null:
return loading(_that);case AddMedicineSuccess() when success != null:
return success(_that);case AddMedicineError() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( AddMedicineResponse response)?  success,TResult Function( ApiErrorModel error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case AddMedicineLoading() when loading != null:
return loading();case AddMedicineSuccess() when success != null:
return success(_that.response);case AddMedicineError() when error != null:
return error(_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( AddMedicineResponse response)  success,required TResult Function( ApiErrorModel error)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case AddMedicineLoading():
return loading();case AddMedicineSuccess():
return success(_that.response);case AddMedicineError():
return error(_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( AddMedicineResponse response)?  success,TResult? Function( ApiErrorModel error)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case AddMedicineLoading() when loading != null:
return loading();case AddMedicineSuccess() when success != null:
return success(_that.response);case AddMedicineError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AddMedicineState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddMedicineState.initial()';
}


}




/// @nodoc


class AddMedicineLoading implements AddMedicineState {
  const AddMedicineLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddMedicineLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddMedicineState.loading()';
}


}




/// @nodoc


class AddMedicineSuccess implements AddMedicineState {
  const AddMedicineSuccess(this.response);
  

 final  AddMedicineResponse response;

/// Create a copy of AddMedicineState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddMedicineSuccessCopyWith<AddMedicineSuccess> get copyWith => _$AddMedicineSuccessCopyWithImpl<AddMedicineSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddMedicineSuccess&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'AddMedicineState.success(response: $response)';
}


}

/// @nodoc
abstract mixin class $AddMedicineSuccessCopyWith<$Res> implements $AddMedicineStateCopyWith<$Res> {
  factory $AddMedicineSuccessCopyWith(AddMedicineSuccess value, $Res Function(AddMedicineSuccess) _then) = _$AddMedicineSuccessCopyWithImpl;
@useResult
$Res call({
 AddMedicineResponse response
});




}
/// @nodoc
class _$AddMedicineSuccessCopyWithImpl<$Res>
    implements $AddMedicineSuccessCopyWith<$Res> {
  _$AddMedicineSuccessCopyWithImpl(this._self, this._then);

  final AddMedicineSuccess _self;
  final $Res Function(AddMedicineSuccess) _then;

/// Create a copy of AddMedicineState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(AddMedicineSuccess(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as AddMedicineResponse,
  ));
}


}

/// @nodoc


class AddMedicineError implements AddMedicineState {
  const AddMedicineError(this.error);
  

 final  ApiErrorModel error;

/// Create a copy of AddMedicineState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddMedicineErrorCopyWith<AddMedicineError> get copyWith => _$AddMedicineErrorCopyWithImpl<AddMedicineError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddMedicineError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'AddMedicineState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $AddMedicineErrorCopyWith<$Res> implements $AddMedicineStateCopyWith<$Res> {
  factory $AddMedicineErrorCopyWith(AddMedicineError value, $Res Function(AddMedicineError) _then) = _$AddMedicineErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel error
});




}
/// @nodoc
class _$AddMedicineErrorCopyWithImpl<$Res>
    implements $AddMedicineErrorCopyWith<$Res> {
  _$AddMedicineErrorCopyWithImpl(this._self, this._then);

  final AddMedicineError _self;
  final $Res Function(AddMedicineError) _then;

/// Create a copy of AddMedicineState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(AddMedicineError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
