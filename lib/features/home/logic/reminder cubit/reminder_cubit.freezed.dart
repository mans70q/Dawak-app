// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReminderState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReminderState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderState()';
}


}

/// @nodoc
class $ReminderStateCopyWith<$Res>  {
$ReminderStateCopyWith(ReminderState _, $Res Function(ReminderState) __);
}


/// Adds pattern-matching-related methods to [ReminderState].
extension ReminderStatePatterns on ReminderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( ReminderLoading value)?  loading,TResult Function( ReminderSuccess value)?  success,TResult Function( ReminderError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ReminderLoading() when loading != null:
return loading(_that);case ReminderSuccess() when success != null:
return success(_that);case ReminderError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( ReminderLoading value)  loading,required TResult Function( ReminderSuccess value)  success,required TResult Function( ReminderError value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case ReminderLoading():
return loading(_that);case ReminderSuccess():
return success(_that);case ReminderError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( ReminderLoading value)?  loading,TResult? Function( ReminderSuccess value)?  success,TResult? Function( ReminderError value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ReminderLoading() when loading != null:
return loading(_that);case ReminderSuccess() when success != null:
return success(_that);case ReminderError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<ReminderWithMedicine> reminders)?  success,TResult Function( ApiErrorModel errorModel)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ReminderLoading() when loading != null:
return loading();case ReminderSuccess() when success != null:
return success(_that.reminders);case ReminderError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<ReminderWithMedicine> reminders)  success,required TResult Function( ApiErrorModel errorModel)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case ReminderLoading():
return loading();case ReminderSuccess():
return success(_that.reminders);case ReminderError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<ReminderWithMedicine> reminders)?  success,TResult? Function( ApiErrorModel errorModel)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ReminderLoading() when loading != null:
return loading();case ReminderSuccess() when success != null:
return success(_that.reminders);case ReminderError() when error != null:
return error(_that.errorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ReminderState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderState.initial()';
}


}




/// @nodoc


class ReminderLoading implements ReminderState {
  const ReminderLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReminderLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderState.loading()';
}


}




/// @nodoc


class ReminderSuccess implements ReminderState {
  const ReminderSuccess(final  List<ReminderWithMedicine> reminders): _reminders = reminders;
  

 final  List<ReminderWithMedicine> _reminders;
 List<ReminderWithMedicine> get reminders {
  if (_reminders is EqualUnmodifiableListView) return _reminders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reminders);
}


/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReminderSuccessCopyWith<ReminderSuccess> get copyWith => _$ReminderSuccessCopyWithImpl<ReminderSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReminderSuccess&&const DeepCollectionEquality().equals(other._reminders, _reminders));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_reminders));

@override
String toString() {
  return 'ReminderState.success(reminders: $reminders)';
}


}

/// @nodoc
abstract mixin class $ReminderSuccessCopyWith<$Res> implements $ReminderStateCopyWith<$Res> {
  factory $ReminderSuccessCopyWith(ReminderSuccess value, $Res Function(ReminderSuccess) _then) = _$ReminderSuccessCopyWithImpl;
@useResult
$Res call({
 List<ReminderWithMedicine> reminders
});




}
/// @nodoc
class _$ReminderSuccessCopyWithImpl<$Res>
    implements $ReminderSuccessCopyWith<$Res> {
  _$ReminderSuccessCopyWithImpl(this._self, this._then);

  final ReminderSuccess _self;
  final $Res Function(ReminderSuccess) _then;

/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reminders = null,}) {
  return _then(ReminderSuccess(
null == reminders ? _self._reminders : reminders // ignore: cast_nullable_to_non_nullable
as List<ReminderWithMedicine>,
  ));
}


}

/// @nodoc


class ReminderError implements ReminderState {
  const ReminderError(this.errorModel);
  

 final  ApiErrorModel errorModel;

/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReminderErrorCopyWith<ReminderError> get copyWith => _$ReminderErrorCopyWithImpl<ReminderError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReminderError&&(identical(other.errorModel, errorModel) || other.errorModel == errorModel));
}


@override
int get hashCode => Object.hash(runtimeType,errorModel);

@override
String toString() {
  return 'ReminderState.error(errorModel: $errorModel)';
}


}

/// @nodoc
abstract mixin class $ReminderErrorCopyWith<$Res> implements $ReminderStateCopyWith<$Res> {
  factory $ReminderErrorCopyWith(ReminderError value, $Res Function(ReminderError) _then) = _$ReminderErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel errorModel
});




}
/// @nodoc
class _$ReminderErrorCopyWithImpl<$Res>
    implements $ReminderErrorCopyWith<$Res> {
  _$ReminderErrorCopyWithImpl(this._self, this._then);

  final ReminderError _self;
  final $Res Function(ReminderError) _then;

/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorModel = null,}) {
  return _then(ReminderError(
null == errorModel ? _self.errorModel : errorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
