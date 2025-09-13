// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ScanState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScanState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ScanState()';
}


}

/// @nodoc
class $ScanStateCopyWith<$Res>  {
$ScanStateCopyWith(ScanState _, $Res Function(ScanState) __);
}


/// Adds pattern-matching-related methods to [ScanState].
extension ScanStatePatterns on ScanState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ScanInitial value)?  initial,TResult Function( ScanLoading value)?  loading,TResult Function( ScanSuccess value)?  success,TResult Function( ScanError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ScanInitial() when initial != null:
return initial(_that);case ScanLoading() when loading != null:
return loading(_that);case ScanSuccess() when success != null:
return success(_that);case ScanError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ScanInitial value)  initial,required TResult Function( ScanLoading value)  loading,required TResult Function( ScanSuccess value)  success,required TResult Function( ScanError value)  error,}){
final _that = this;
switch (_that) {
case ScanInitial():
return initial(_that);case ScanLoading():
return loading(_that);case ScanSuccess():
return success(_that);case ScanError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ScanInitial value)?  initial,TResult? Function( ScanLoading value)?  loading,TResult? Function( ScanSuccess value)?  success,TResult? Function( ScanError value)?  error,}){
final _that = this;
switch (_that) {
case ScanInitial() when initial != null:
return initial(_that);case ScanLoading() when loading != null:
return loading(_that);case ScanSuccess() when success != null:
return success(_that);case ScanError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( ScanResponse scanResponse)?  success,TResult Function( ApiErrorModel errorModel)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ScanInitial() when initial != null:
return initial();case ScanLoading() when loading != null:
return loading();case ScanSuccess() when success != null:
return success(_that.scanResponse);case ScanError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( ScanResponse scanResponse)  success,required TResult Function( ApiErrorModel errorModel)  error,}) {final _that = this;
switch (_that) {
case ScanInitial():
return initial();case ScanLoading():
return loading();case ScanSuccess():
return success(_that.scanResponse);case ScanError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( ScanResponse scanResponse)?  success,TResult? Function( ApiErrorModel errorModel)?  error,}) {final _that = this;
switch (_that) {
case ScanInitial() when initial != null:
return initial();case ScanLoading() when loading != null:
return loading();case ScanSuccess() when success != null:
return success(_that.scanResponse);case ScanError() when error != null:
return error(_that.errorModel);case _:
  return null;

}
}

}

/// @nodoc


class ScanInitial implements ScanState {
  const ScanInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScanInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ScanState.initial()';
}


}




/// @nodoc


class ScanLoading implements ScanState {
  const ScanLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScanLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ScanState.loading()';
}


}




/// @nodoc


class ScanSuccess implements ScanState {
  const ScanSuccess(this.scanResponse);
  

 final  ScanResponse scanResponse;

/// Create a copy of ScanState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScanSuccessCopyWith<ScanSuccess> get copyWith => _$ScanSuccessCopyWithImpl<ScanSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScanSuccess&&(identical(other.scanResponse, scanResponse) || other.scanResponse == scanResponse));
}


@override
int get hashCode => Object.hash(runtimeType,scanResponse);

@override
String toString() {
  return 'ScanState.success(scanResponse: $scanResponse)';
}


}

/// @nodoc
abstract mixin class $ScanSuccessCopyWith<$Res> implements $ScanStateCopyWith<$Res> {
  factory $ScanSuccessCopyWith(ScanSuccess value, $Res Function(ScanSuccess) _then) = _$ScanSuccessCopyWithImpl;
@useResult
$Res call({
 ScanResponse scanResponse
});




}
/// @nodoc
class _$ScanSuccessCopyWithImpl<$Res>
    implements $ScanSuccessCopyWith<$Res> {
  _$ScanSuccessCopyWithImpl(this._self, this._then);

  final ScanSuccess _self;
  final $Res Function(ScanSuccess) _then;

/// Create a copy of ScanState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? scanResponse = null,}) {
  return _then(ScanSuccess(
null == scanResponse ? _self.scanResponse : scanResponse // ignore: cast_nullable_to_non_nullable
as ScanResponse,
  ));
}


}

/// @nodoc


class ScanError implements ScanState {
  const ScanError(this.errorModel);
  

 final  ApiErrorModel errorModel;

/// Create a copy of ScanState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScanErrorCopyWith<ScanError> get copyWith => _$ScanErrorCopyWithImpl<ScanError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScanError&&(identical(other.errorModel, errorModel) || other.errorModel == errorModel));
}


@override
int get hashCode => Object.hash(runtimeType,errorModel);

@override
String toString() {
  return 'ScanState.error(errorModel: $errorModel)';
}


}

/// @nodoc
abstract mixin class $ScanErrorCopyWith<$Res> implements $ScanStateCopyWith<$Res> {
  factory $ScanErrorCopyWith(ScanError value, $Res Function(ScanError) _then) = _$ScanErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel errorModel
});




}
/// @nodoc
class _$ScanErrorCopyWithImpl<$Res>
    implements $ScanErrorCopyWith<$Res> {
  _$ScanErrorCopyWithImpl(this._self, this._then);

  final ScanError _self;
  final $Res Function(ScanError) _then;

/// Create a copy of ScanState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorModel = null,}) {
  return _then(ScanError(
null == errorModel ? _self.errorModel : errorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
