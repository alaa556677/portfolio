// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'experience_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExperienceStates {

 RequestState<ExperienceModel> get experienceState;
/// Create a copy of ExperienceStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExperienceStatesCopyWith<ExperienceStates> get copyWith => _$ExperienceStatesCopyWithImpl<ExperienceStates>(this as ExperienceStates, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExperienceStates&&(identical(other.experienceState, experienceState) || other.experienceState == experienceState));
}


@override
int get hashCode => Object.hash(runtimeType,experienceState);

@override
String toString() {
  return 'ExperienceStates(experienceState: $experienceState)';
}


}

/// @nodoc
abstract mixin class $ExperienceStatesCopyWith<$Res>  {
  factory $ExperienceStatesCopyWith(ExperienceStates value, $Res Function(ExperienceStates) _then) = _$ExperienceStatesCopyWithImpl;
@useResult
$Res call({
 RequestState<ExperienceModel> experienceState
});


$RequestStateCopyWith<ExperienceModel, $Res> get experienceState;

}
/// @nodoc
class _$ExperienceStatesCopyWithImpl<$Res>
    implements $ExperienceStatesCopyWith<$Res> {
  _$ExperienceStatesCopyWithImpl(this._self, this._then);

  final ExperienceStates _self;
  final $Res Function(ExperienceStates) _then;

/// Create a copy of ExperienceStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? experienceState = null,}) {
  return _then(_self.copyWith(
experienceState: null == experienceState ? _self.experienceState : experienceState // ignore: cast_nullable_to_non_nullable
as RequestState<ExperienceModel>,
  ));
}
/// Create a copy of ExperienceStates
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestStateCopyWith<ExperienceModel, $Res> get experienceState {
  
  return $RequestStateCopyWith<ExperienceModel, $Res>(_self.experienceState, (value) {
    return _then(_self.copyWith(experienceState: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExperienceStates].
extension ExperienceStatesPatterns on ExperienceStates {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExperienceStates value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExperienceStates() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExperienceStates value)  $default,){
final _that = this;
switch (_that) {
case _ExperienceStates():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExperienceStates value)?  $default,){
final _that = this;
switch (_that) {
case _ExperienceStates() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestState<ExperienceModel> experienceState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExperienceStates() when $default != null:
return $default(_that.experienceState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestState<ExperienceModel> experienceState)  $default,) {final _that = this;
switch (_that) {
case _ExperienceStates():
return $default(_that.experienceState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestState<ExperienceModel> experienceState)?  $default,) {final _that = this;
switch (_that) {
case _ExperienceStates() when $default != null:
return $default(_that.experienceState);case _:
  return null;

}
}

}

/// @nodoc


class _ExperienceStates implements ExperienceStates {
  const _ExperienceStates({this.experienceState = const RequestState<ExperienceModel>.isInitial()});
  

@override@JsonKey() final  RequestState<ExperienceModel> experienceState;

/// Create a copy of ExperienceStates
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExperienceStatesCopyWith<_ExperienceStates> get copyWith => __$ExperienceStatesCopyWithImpl<_ExperienceStates>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExperienceStates&&(identical(other.experienceState, experienceState) || other.experienceState == experienceState));
}


@override
int get hashCode => Object.hash(runtimeType,experienceState);

@override
String toString() {
  return 'ExperienceStates(experienceState: $experienceState)';
}


}

/// @nodoc
abstract mixin class _$ExperienceStatesCopyWith<$Res> implements $ExperienceStatesCopyWith<$Res> {
  factory _$ExperienceStatesCopyWith(_ExperienceStates value, $Res Function(_ExperienceStates) _then) = __$ExperienceStatesCopyWithImpl;
@override @useResult
$Res call({
 RequestState<ExperienceModel> experienceState
});


@override $RequestStateCopyWith<ExperienceModel, $Res> get experienceState;

}
/// @nodoc
class __$ExperienceStatesCopyWithImpl<$Res>
    implements _$ExperienceStatesCopyWith<$Res> {
  __$ExperienceStatesCopyWithImpl(this._self, this._then);

  final _ExperienceStates _self;
  final $Res Function(_ExperienceStates) _then;

/// Create a copy of ExperienceStates
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? experienceState = null,}) {
  return _then(_ExperienceStates(
experienceState: null == experienceState ? _self.experienceState : experienceState // ignore: cast_nullable_to_non_nullable
as RequestState<ExperienceModel>,
  ));
}

/// Create a copy of ExperienceStates
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestStateCopyWith<ExperienceModel, $Res> get experienceState {
  
  return $RequestStateCopyWith<ExperienceModel, $Res>(_self.experienceState, (value) {
    return _then(_self.copyWith(experienceState: value));
  });
}
}

// dart format on
