// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'projects_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProjectsStates {

 RequestState<ProjectsModel> get projectsState;
/// Create a copy of ProjectsStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProjectsStatesCopyWith<ProjectsStates> get copyWith => _$ProjectsStatesCopyWithImpl<ProjectsStates>(this as ProjectsStates, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProjectsStates&&(identical(other.projectsState, projectsState) || other.projectsState == projectsState));
}


@override
int get hashCode => Object.hash(runtimeType,projectsState);

@override
String toString() {
  return 'ProjectsStates(projectsState: $projectsState)';
}


}

/// @nodoc
abstract mixin class $ProjectsStatesCopyWith<$Res>  {
  factory $ProjectsStatesCopyWith(ProjectsStates value, $Res Function(ProjectsStates) _then) = _$ProjectsStatesCopyWithImpl;
@useResult
$Res call({
 RequestState<ProjectsModel> projectsState
});


$RequestStateCopyWith<ProjectsModel, $Res> get projectsState;

}
/// @nodoc
class _$ProjectsStatesCopyWithImpl<$Res>
    implements $ProjectsStatesCopyWith<$Res> {
  _$ProjectsStatesCopyWithImpl(this._self, this._then);

  final ProjectsStates _self;
  final $Res Function(ProjectsStates) _then;

/// Create a copy of ProjectsStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projectsState = null,}) {
  return _then(_self.copyWith(
projectsState: null == projectsState ? _self.projectsState : projectsState // ignore: cast_nullable_to_non_nullable
as RequestState<ProjectsModel>,
  ));
}
/// Create a copy of ProjectsStates
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestStateCopyWith<ProjectsModel, $Res> get projectsState {
  
  return $RequestStateCopyWith<ProjectsModel, $Res>(_self.projectsState, (value) {
    return _then(_self.copyWith(projectsState: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProjectsStates].
extension ProjectsStatesPatterns on ProjectsStates {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProjectsStates value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProjectsStates() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProjectsStates value)  $default,){
final _that = this;
switch (_that) {
case _ProjectsStates():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProjectsStates value)?  $default,){
final _that = this;
switch (_that) {
case _ProjectsStates() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestState<ProjectsModel> projectsState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProjectsStates() when $default != null:
return $default(_that.projectsState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestState<ProjectsModel> projectsState)  $default,) {final _that = this;
switch (_that) {
case _ProjectsStates():
return $default(_that.projectsState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestState<ProjectsModel> projectsState)?  $default,) {final _that = this;
switch (_that) {
case _ProjectsStates() when $default != null:
return $default(_that.projectsState);case _:
  return null;

}
}

}

/// @nodoc


class _ProjectsStates implements ProjectsStates {
  const _ProjectsStates({this.projectsState = const RequestState<ProjectsModel>.isInitial()});
  

@override@JsonKey() final  RequestState<ProjectsModel> projectsState;

/// Create a copy of ProjectsStates
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProjectsStatesCopyWith<_ProjectsStates> get copyWith => __$ProjectsStatesCopyWithImpl<_ProjectsStates>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProjectsStates&&(identical(other.projectsState, projectsState) || other.projectsState == projectsState));
}


@override
int get hashCode => Object.hash(runtimeType,projectsState);

@override
String toString() {
  return 'ProjectsStates(projectsState: $projectsState)';
}


}

/// @nodoc
abstract mixin class _$ProjectsStatesCopyWith<$Res> implements $ProjectsStatesCopyWith<$Res> {
  factory _$ProjectsStatesCopyWith(_ProjectsStates value, $Res Function(_ProjectsStates) _then) = __$ProjectsStatesCopyWithImpl;
@override @useResult
$Res call({
 RequestState<ProjectsModel> projectsState
});


@override $RequestStateCopyWith<ProjectsModel, $Res> get projectsState;

}
/// @nodoc
class __$ProjectsStatesCopyWithImpl<$Res>
    implements _$ProjectsStatesCopyWith<$Res> {
  __$ProjectsStatesCopyWithImpl(this._self, this._then);

  final _ProjectsStates _self;
  final $Res Function(_ProjectsStates) _then;

/// Create a copy of ProjectsStates
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? projectsState = null,}) {
  return _then(_ProjectsStates(
projectsState: null == projectsState ? _self.projectsState : projectsState // ignore: cast_nullable_to_non_nullable
as RequestState<ProjectsModel>,
  ));
}

/// Create a copy of ProjectsStates
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestStateCopyWith<ProjectsModel, $Res> get projectsState {
  
  return $RequestStateCopyWith<ProjectsModel, $Res>(_self.projectsState, (value) {
    return _then(_self.copyWith(projectsState: value));
  });
}
}

// dart format on
