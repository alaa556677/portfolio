// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AboutStates {

 RequestState<AboutModel> get aboutState;
/// Create a copy of AboutStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AboutStatesCopyWith<AboutStates> get copyWith => _$AboutStatesCopyWithImpl<AboutStates>(this as AboutStates, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AboutStates&&(identical(other.aboutState, aboutState) || other.aboutState == aboutState));
}


@override
int get hashCode => Object.hash(runtimeType,aboutState);

@override
String toString() {
  return 'AboutStates(aboutState: $aboutState)';
}


}

/// @nodoc
abstract mixin class $AboutStatesCopyWith<$Res>  {
  factory $AboutStatesCopyWith(AboutStates value, $Res Function(AboutStates) _then) = _$AboutStatesCopyWithImpl;
@useResult
$Res call({
 RequestState<AboutModel> aboutState
});


$RequestStateCopyWith<AboutModel, $Res> get aboutState;

}
/// @nodoc
class _$AboutStatesCopyWithImpl<$Res>
    implements $AboutStatesCopyWith<$Res> {
  _$AboutStatesCopyWithImpl(this._self, this._then);

  final AboutStates _self;
  final $Res Function(AboutStates) _then;

/// Create a copy of AboutStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? aboutState = null,}) {
  return _then(_self.copyWith(
aboutState: null == aboutState ? _self.aboutState : aboutState // ignore: cast_nullable_to_non_nullable
as RequestState<AboutModel>,
  ));
}
/// Create a copy of AboutStates
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestStateCopyWith<AboutModel, $Res> get aboutState {
  
  return $RequestStateCopyWith<AboutModel, $Res>(_self.aboutState, (value) {
    return _then(_self.copyWith(aboutState: value));
  });
}
}


/// Adds pattern-matching-related methods to [AboutStates].
extension AboutStatesPatterns on AboutStates {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AboutStates value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AboutStates() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AboutStates value)  $default,){
final _that = this;
switch (_that) {
case _AboutStates():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AboutStates value)?  $default,){
final _that = this;
switch (_that) {
case _AboutStates() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestState<AboutModel> aboutState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AboutStates() when $default != null:
return $default(_that.aboutState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestState<AboutModel> aboutState)  $default,) {final _that = this;
switch (_that) {
case _AboutStates():
return $default(_that.aboutState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestState<AboutModel> aboutState)?  $default,) {final _that = this;
switch (_that) {
case _AboutStates() when $default != null:
return $default(_that.aboutState);case _:
  return null;

}
}

}

/// @nodoc


class _AboutStates implements AboutStates {
  const _AboutStates({this.aboutState = const RequestState<AboutModel>.isInitial()});
  

@override@JsonKey() final  RequestState<AboutModel> aboutState;

/// Create a copy of AboutStates
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AboutStatesCopyWith<_AboutStates> get copyWith => __$AboutStatesCopyWithImpl<_AboutStates>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AboutStates&&(identical(other.aboutState, aboutState) || other.aboutState == aboutState));
}


@override
int get hashCode => Object.hash(runtimeType,aboutState);

@override
String toString() {
  return 'AboutStates(aboutState: $aboutState)';
}


}

/// @nodoc
abstract mixin class _$AboutStatesCopyWith<$Res> implements $AboutStatesCopyWith<$Res> {
  factory _$AboutStatesCopyWith(_AboutStates value, $Res Function(_AboutStates) _then) = __$AboutStatesCopyWithImpl;
@override @useResult
$Res call({
 RequestState<AboutModel> aboutState
});


@override $RequestStateCopyWith<AboutModel, $Res> get aboutState;

}
/// @nodoc
class __$AboutStatesCopyWithImpl<$Res>
    implements _$AboutStatesCopyWith<$Res> {
  __$AboutStatesCopyWithImpl(this._self, this._then);

  final _AboutStates _self;
  final $Res Function(_AboutStates) _then;

/// Create a copy of AboutStates
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? aboutState = null,}) {
  return _then(_AboutStates(
aboutState: null == aboutState ? _self.aboutState : aboutState // ignore: cast_nullable_to_non_nullable
as RequestState<AboutModel>,
  ));
}

/// Create a copy of AboutStates
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestStateCopyWith<AboutModel, $Res> get aboutState {
  
  return $RequestStateCopyWith<AboutModel, $Res>(_self.aboutState, (value) {
    return _then(_self.copyWith(aboutState: value));
  });
}
}

// dart format on
