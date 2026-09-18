// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ContactStates {

 RequestState<bool> get sendEmailState;
/// Create a copy of ContactStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactStatesCopyWith<ContactStates> get copyWith => _$ContactStatesCopyWithImpl<ContactStates>(this as ContactStates, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactStates&&(identical(other.sendEmailState, sendEmailState) || other.sendEmailState == sendEmailState));
}


@override
int get hashCode => Object.hash(runtimeType,sendEmailState);

@override
String toString() {
  return 'ContactStates(sendEmailState: $sendEmailState)';
}


}

/// @nodoc
abstract mixin class $ContactStatesCopyWith<$Res>  {
  factory $ContactStatesCopyWith(ContactStates value, $Res Function(ContactStates) _then) = _$ContactStatesCopyWithImpl;
@useResult
$Res call({
 RequestState<bool> sendEmailState
});


$RequestStateCopyWith<bool, $Res> get sendEmailState;

}
/// @nodoc
class _$ContactStatesCopyWithImpl<$Res>
    implements $ContactStatesCopyWith<$Res> {
  _$ContactStatesCopyWithImpl(this._self, this._then);

  final ContactStates _self;
  final $Res Function(ContactStates) _then;

/// Create a copy of ContactStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sendEmailState = null,}) {
  return _then(_self.copyWith(
sendEmailState: null == sendEmailState ? _self.sendEmailState : sendEmailState // ignore: cast_nullable_to_non_nullable
as RequestState<bool>,
  ));
}
/// Create a copy of ContactStates
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestStateCopyWith<bool, $Res> get sendEmailState {
  
  return $RequestStateCopyWith<bool, $Res>(_self.sendEmailState, (value) {
    return _then(_self.copyWith(sendEmailState: value));
  });
}
}


/// Adds pattern-matching-related methods to [ContactStates].
extension ContactStatesPatterns on ContactStates {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContactStates value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContactStates() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContactStates value)  $default,){
final _that = this;
switch (_that) {
case _ContactStates():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContactStates value)?  $default,){
final _that = this;
switch (_that) {
case _ContactStates() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestState<bool> sendEmailState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContactStates() when $default != null:
return $default(_that.sendEmailState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestState<bool> sendEmailState)  $default,) {final _that = this;
switch (_that) {
case _ContactStates():
return $default(_that.sendEmailState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestState<bool> sendEmailState)?  $default,) {final _that = this;
switch (_that) {
case _ContactStates() when $default != null:
return $default(_that.sendEmailState);case _:
  return null;

}
}

}

/// @nodoc


class _ContactStates implements ContactStates {
  const _ContactStates({this.sendEmailState = const RequestState<bool>.isInitial()});
  

@override@JsonKey() final  RequestState<bool> sendEmailState;

/// Create a copy of ContactStates
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactStatesCopyWith<_ContactStates> get copyWith => __$ContactStatesCopyWithImpl<_ContactStates>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContactStates&&(identical(other.sendEmailState, sendEmailState) || other.sendEmailState == sendEmailState));
}


@override
int get hashCode => Object.hash(runtimeType,sendEmailState);

@override
String toString() {
  return 'ContactStates(sendEmailState: $sendEmailState)';
}


}

/// @nodoc
abstract mixin class _$ContactStatesCopyWith<$Res> implements $ContactStatesCopyWith<$Res> {
  factory _$ContactStatesCopyWith(_ContactStates value, $Res Function(_ContactStates) _then) = __$ContactStatesCopyWithImpl;
@override @useResult
$Res call({
 RequestState<bool> sendEmailState
});


@override $RequestStateCopyWith<bool, $Res> get sendEmailState;

}
/// @nodoc
class __$ContactStatesCopyWithImpl<$Res>
    implements _$ContactStatesCopyWith<$Res> {
  __$ContactStatesCopyWithImpl(this._self, this._then);

  final _ContactStates _self;
  final $Res Function(_ContactStates) _then;

/// Create a copy of ContactStates
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sendEmailState = null,}) {
  return _then(_ContactStates(
sendEmailState: null == sendEmailState ? _self.sendEmailState : sendEmailState // ignore: cast_nullable_to_non_nullable
as RequestState<bool>,
  ));
}

/// Create a copy of ContactStates
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestStateCopyWith<bool, $Res> get sendEmailState {
  
  return $RequestStateCopyWith<bool, $Res>(_self.sendEmailState, (value) {
    return _then(_self.copyWith(sendEmailState: value));
  });
}
}

// dart format on
