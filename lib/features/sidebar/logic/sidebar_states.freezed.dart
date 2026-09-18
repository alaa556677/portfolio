// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sidebar_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SidebarStates {

 RequestState<PersonalInfo> get personalInfoState;
/// Create a copy of SidebarStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SidebarStatesCopyWith<SidebarStates> get copyWith => _$SidebarStatesCopyWithImpl<SidebarStates>(this as SidebarStates, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SidebarStates&&(identical(other.personalInfoState, personalInfoState) || other.personalInfoState == personalInfoState));
}


@override
int get hashCode => Object.hash(runtimeType,personalInfoState);

@override
String toString() {
  return 'SidebarStates(personalInfoState: $personalInfoState)';
}


}

/// @nodoc
abstract mixin class $SidebarStatesCopyWith<$Res>  {
  factory $SidebarStatesCopyWith(SidebarStates value, $Res Function(SidebarStates) _then) = _$SidebarStatesCopyWithImpl;
@useResult
$Res call({
 RequestState<PersonalInfo> personalInfoState
});


$RequestStateCopyWith<PersonalInfo, $Res> get personalInfoState;

}
/// @nodoc
class _$SidebarStatesCopyWithImpl<$Res>
    implements $SidebarStatesCopyWith<$Res> {
  _$SidebarStatesCopyWithImpl(this._self, this._then);

  final SidebarStates _self;
  final $Res Function(SidebarStates) _then;

/// Create a copy of SidebarStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? personalInfoState = null,}) {
  return _then(_self.copyWith(
personalInfoState: null == personalInfoState ? _self.personalInfoState : personalInfoState // ignore: cast_nullable_to_non_nullable
as RequestState<PersonalInfo>,
  ));
}
/// Create a copy of SidebarStates
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestStateCopyWith<PersonalInfo, $Res> get personalInfoState {
  
  return $RequestStateCopyWith<PersonalInfo, $Res>(_self.personalInfoState, (value) {
    return _then(_self.copyWith(personalInfoState: value));
  });
}
}


/// Adds pattern-matching-related methods to [SidebarStates].
extension SidebarStatesPatterns on SidebarStates {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SidebarStates value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SidebarStates() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SidebarStates value)  $default,){
final _that = this;
switch (_that) {
case _SidebarStates():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SidebarStates value)?  $default,){
final _that = this;
switch (_that) {
case _SidebarStates() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestState<PersonalInfo> personalInfoState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SidebarStates() when $default != null:
return $default(_that.personalInfoState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestState<PersonalInfo> personalInfoState)  $default,) {final _that = this;
switch (_that) {
case _SidebarStates():
return $default(_that.personalInfoState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestState<PersonalInfo> personalInfoState)?  $default,) {final _that = this;
switch (_that) {
case _SidebarStates() when $default != null:
return $default(_that.personalInfoState);case _:
  return null;

}
}

}

/// @nodoc


class _SidebarStates implements SidebarStates {
  const _SidebarStates({this.personalInfoState = const RequestState<PersonalInfo>.isInitial()});
  

@override@JsonKey() final  RequestState<PersonalInfo> personalInfoState;

/// Create a copy of SidebarStates
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SidebarStatesCopyWith<_SidebarStates> get copyWith => __$SidebarStatesCopyWithImpl<_SidebarStates>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SidebarStates&&(identical(other.personalInfoState, personalInfoState) || other.personalInfoState == personalInfoState));
}


@override
int get hashCode => Object.hash(runtimeType,personalInfoState);

@override
String toString() {
  return 'SidebarStates(personalInfoState: $personalInfoState)';
}


}

/// @nodoc
abstract mixin class _$SidebarStatesCopyWith<$Res> implements $SidebarStatesCopyWith<$Res> {
  factory _$SidebarStatesCopyWith(_SidebarStates value, $Res Function(_SidebarStates) _then) = __$SidebarStatesCopyWithImpl;
@override @useResult
$Res call({
 RequestState<PersonalInfo> personalInfoState
});


@override $RequestStateCopyWith<PersonalInfo, $Res> get personalInfoState;

}
/// @nodoc
class __$SidebarStatesCopyWithImpl<$Res>
    implements _$SidebarStatesCopyWith<$Res> {
  __$SidebarStatesCopyWithImpl(this._self, this._then);

  final _SidebarStates _self;
  final $Res Function(_SidebarStates) _then;

/// Create a copy of SidebarStates
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? personalInfoState = null,}) {
  return _then(_SidebarStates(
personalInfoState: null == personalInfoState ? _self.personalInfoState : personalInfoState // ignore: cast_nullable_to_non_nullable
as RequestState<PersonalInfo>,
  ));
}

/// Create a copy of SidebarStates
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestStateCopyWith<PersonalInfo, $Res> get personalInfoState {
  
  return $RequestStateCopyWith<PersonalInfo, $Res>(_self.personalInfoState, (value) {
    return _then(_self.copyWith(personalInfoState: value));
  });
}
}

// dart format on
