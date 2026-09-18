// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeStates {

 int get currentTabIndex;
/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStatesCopyWith<HomeStates> get copyWith => _$HomeStatesCopyWithImpl<HomeStates>(this as HomeStates, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeStates&&(identical(other.currentTabIndex, currentTabIndex) || other.currentTabIndex == currentTabIndex));
}


@override
int get hashCode => Object.hash(runtimeType,currentTabIndex);

@override
String toString() {
  return 'HomeStates(currentTabIndex: $currentTabIndex)';
}


}

/// @nodoc
abstract mixin class $HomeStatesCopyWith<$Res>  {
  factory $HomeStatesCopyWith(HomeStates value, $Res Function(HomeStates) _then) = _$HomeStatesCopyWithImpl;
@useResult
$Res call({
 int currentTabIndex
});




}
/// @nodoc
class _$HomeStatesCopyWithImpl<$Res>
    implements $HomeStatesCopyWith<$Res> {
  _$HomeStatesCopyWithImpl(this._self, this._then);

  final HomeStates _self;
  final $Res Function(HomeStates) _then;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentTabIndex = null,}) {
  return _then(_self.copyWith(
currentTabIndex: null == currentTabIndex ? _self.currentTabIndex : currentTabIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeStates].
extension HomeStatesPatterns on HomeStates {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeStates value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeStates() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeStates value)  $default,){
final _that = this;
switch (_that) {
case _HomeStates():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeStates value)?  $default,){
final _that = this;
switch (_that) {
case _HomeStates() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentTabIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeStates() when $default != null:
return $default(_that.currentTabIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentTabIndex)  $default,) {final _that = this;
switch (_that) {
case _HomeStates():
return $default(_that.currentTabIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentTabIndex)?  $default,) {final _that = this;
switch (_that) {
case _HomeStates() when $default != null:
return $default(_that.currentTabIndex);case _:
  return null;

}
}

}

/// @nodoc


class _HomeStates implements HomeStates {
  const _HomeStates({this.currentTabIndex = 0});
  

@override@JsonKey() final  int currentTabIndex;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStatesCopyWith<_HomeStates> get copyWith => __$HomeStatesCopyWithImpl<_HomeStates>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeStates&&(identical(other.currentTabIndex, currentTabIndex) || other.currentTabIndex == currentTabIndex));
}


@override
int get hashCode => Object.hash(runtimeType,currentTabIndex);

@override
String toString() {
  return 'HomeStates(currentTabIndex: $currentTabIndex)';
}


}

/// @nodoc
abstract mixin class _$HomeStatesCopyWith<$Res> implements $HomeStatesCopyWith<$Res> {
  factory _$HomeStatesCopyWith(_HomeStates value, $Res Function(_HomeStates) _then) = __$HomeStatesCopyWithImpl;
@override @useResult
$Res call({
 int currentTabIndex
});




}
/// @nodoc
class __$HomeStatesCopyWithImpl<$Res>
    implements _$HomeStatesCopyWith<$Res> {
  __$HomeStatesCopyWithImpl(this._self, this._then);

  final _HomeStates _self;
  final $Res Function(_HomeStates) _then;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentTabIndex = null,}) {
  return _then(_HomeStates(
currentTabIndex: null == currentTabIndex ? _self.currentTabIndex : currentTabIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
