// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tab_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TabState {
  int get tabIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabStateCopyWith<TabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabStateCopyWith<$Res> {
  factory $TabStateCopyWith(TabState value, $Res Function(TabState) then) =
      _$TabStateCopyWithImpl<$Res, TabState>;
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class _$TabStateCopyWithImpl<$Res, $Val extends TabState>
    implements $TabStateCopyWith<$Res> {
  _$TabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
  }) {
    return _then(_value.copyWith(
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TabStateCopyWith<$Res> implements $TabStateCopyWith<$Res> {
  factory _$$_TabStateCopyWith(
          _$_TabState value, $Res Function(_$_TabState) then) =
      __$$_TabStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class __$$_TabStateCopyWithImpl<$Res>
    extends _$TabStateCopyWithImpl<$Res, _$_TabState>
    implements _$$_TabStateCopyWith<$Res> {
  __$$_TabStateCopyWithImpl(
      _$_TabState _value, $Res Function(_$_TabState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
  }) {
    return _then(_$_TabState(
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TabState implements _TabState {
  const _$_TabState({this.tabIndex = 1});

  @override
  @JsonKey()
  final int tabIndex;

  @override
  String toString() {
    return 'TabState(tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabState &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TabStateCopyWith<_$_TabState> get copyWith =>
      __$$_TabStateCopyWithImpl<_$_TabState>(this, _$identity);
}

abstract class _TabState implements TabState {
  const factory _TabState({final int tabIndex}) = _$_TabState;

  @override
  int get tabIndex;
  @override
  @JsonKey(ignore: true)
  _$$_TabStateCopyWith<_$_TabState> get copyWith =>
      throw _privateConstructorUsedError;
}
