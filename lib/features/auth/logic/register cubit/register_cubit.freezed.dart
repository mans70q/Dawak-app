// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState<$T>()';
}


}

/// @nodoc
class $RegisterStateCopyWith<T,$Res>  {
$RegisterStateCopyWith(RegisterState<T> _, $Res Function(RegisterState<T>) __);
}


/// Adds pattern-matching-related methods to [RegisterState].
extension RegisterStatePatterns<T> on RegisterState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( RegisterLoading<T> value)?  loading,TResult Function( RegisterSuccess<T> value)?  success,TResult Function( RegisterError<T> value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case RegisterLoading() when loading != null:
return loading(_that);case RegisterSuccess() when success != null:
return success(_that);case RegisterError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( RegisterLoading<T> value)  loading,required TResult Function( RegisterSuccess<T> value)  success,required TResult Function( RegisterError<T> value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case RegisterLoading():
return loading(_that);case RegisterSuccess():
return success(_that);case RegisterError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( RegisterLoading<T> value)?  loading,TResult? Function( RegisterSuccess<T> value)?  success,TResult? Function( RegisterError<T> value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case RegisterLoading() when loading != null:
return loading(_that);case RegisterSuccess() when success != null:
return success(_that);case RegisterError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( T data)?  success,TResult Function( ApiErrorModel error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case RegisterLoading() when loading != null:
return loading();case RegisterSuccess() when success != null:
return success(_that.data);case RegisterError() when error != null:
return error(_that.errorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( T data)  success,required TResult Function( ApiErrorModel error)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case RegisterLoading():
return loading();case RegisterSuccess():
return success(_that.data);case RegisterError():
return error(_that.errorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( T data)?  success,TResult? Function( ApiErrorModel error)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case RegisterLoading() when loading != null:
return loading();case RegisterSuccess() when success != null:
return success(_that.data);case RegisterError() when error != null:
return error(_that.errorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements RegisterState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState<$T>.initial()';
}


}




/// @nodoc


class RegisterLoading<T> implements RegisterState<T> {
  const RegisterLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState<$T>.loading()';
}


}




/// @nodoc


class RegisterSuccess<T> implements RegisterState<T> {
  const RegisterSuccess(this.data);
  

 final  T data;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterSuccessCopyWith<T, RegisterSuccess<T>> get copyWith => _$RegisterSuccessCopyWithImpl<T, RegisterSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'RegisterState<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $RegisterSuccessCopyWith<T,$Res> implements $RegisterStateCopyWith<T, $Res> {
  factory $RegisterSuccessCopyWith(RegisterSuccess<T> value, $Res Function(RegisterSuccess<T>) _then) = _$RegisterSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$RegisterSuccessCopyWithImpl<T,$Res>
    implements $RegisterSuccessCopyWith<T, $Res> {
  _$RegisterSuccessCopyWithImpl(this._self, this._then);

  final RegisterSuccess<T> _self;
  final $Res Function(RegisterSuccess<T>) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(RegisterSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class RegisterError<T> implements RegisterState<T> {
  const RegisterError(this.errorModel);
  

 final  ApiErrorModel errorModel;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterErrorCopyWith<T, RegisterError<T>> get copyWith => _$RegisterErrorCopyWithImpl<T, RegisterError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterError<T>&&(identical(other.errorModel, errorModel) || other.errorModel == errorModel));
}


@override
int get hashCode => Object.hash(runtimeType,errorModel);

@override
String toString() {
  return 'RegisterState<$T>.error(error: $errorModel)';
}


}

/// @nodoc
abstract mixin class $RegisterErrorCopyWith<T,$Res> implements $RegisterStateCopyWith<T, $Res> {
  factory $RegisterErrorCopyWith(RegisterError<T> value, $Res Function(RegisterError<T>) _then) = _$RegisterErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel error
});




}
/// @nodoc
class _$RegisterErrorCopyWithImpl<T,$Res>
    implements $RegisterErrorCopyWith<T, $Res> {
  _$RegisterErrorCopyWithImpl(this._self, this._then);

  final RegisterError<T> _self;
  final $Res Function(RegisterError<T>) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(RegisterError<T>(
null == error ? _self.errorModel : error // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
