// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flexible_drop_down_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FlexibleDropDownState {
  bool get shown => throw _privateConstructorUsedError;

  /// Create a copy of FlexibleDropDownState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlexibleDropDownStateCopyWith<FlexibleDropDownState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlexibleDropDownStateCopyWith<$Res> {
  factory $FlexibleDropDownStateCopyWith(
    FlexibleDropDownState value,
    $Res Function(FlexibleDropDownState) then,
  ) = _$FlexibleDropDownStateCopyWithImpl<$Res, FlexibleDropDownState>;
  @useResult
  $Res call({bool shown});
}

/// @nodoc
class _$FlexibleDropDownStateCopyWithImpl<
  $Res,
  $Val extends FlexibleDropDownState
>
    implements $FlexibleDropDownStateCopyWith<$Res> {
  _$FlexibleDropDownStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlexibleDropDownState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? shown = null}) {
    return _then(
      _value.copyWith(
            shown: null == shown
                ? _value.shown
                : shown // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FlexibleDropDownStateImplCopyWith<$Res>
    implements $FlexibleDropDownStateCopyWith<$Res> {
  factory _$$FlexibleDropDownStateImplCopyWith(
    _$FlexibleDropDownStateImpl value,
    $Res Function(_$FlexibleDropDownStateImpl) then,
  ) = __$$FlexibleDropDownStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool shown});
}

/// @nodoc
class __$$FlexibleDropDownStateImplCopyWithImpl<$Res>
    extends
        _$FlexibleDropDownStateCopyWithImpl<$Res, _$FlexibleDropDownStateImpl>
    implements _$$FlexibleDropDownStateImplCopyWith<$Res> {
  __$$FlexibleDropDownStateImplCopyWithImpl(
    _$FlexibleDropDownStateImpl _value,
    $Res Function(_$FlexibleDropDownStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FlexibleDropDownState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? shown = null}) {
    return _then(
      _$FlexibleDropDownStateImpl(
        shown: null == shown
            ? _value.shown
            : shown // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$FlexibleDropDownStateImpl extends _FlexibleDropDownState {
  const _$FlexibleDropDownStateImpl({required this.shown}) : super._();

  @override
  final bool shown;

  @override
  String toString() {
    return 'FlexibleDropDownState(shown: $shown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlexibleDropDownStateImpl &&
            (identical(other.shown, shown) || other.shown == shown));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shown);

  /// Create a copy of FlexibleDropDownState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlexibleDropDownStateImplCopyWith<_$FlexibleDropDownStateImpl>
  get copyWith =>
      __$$FlexibleDropDownStateImplCopyWithImpl<_$FlexibleDropDownStateImpl>(
        this,
        _$identity,
      );
}

abstract class _FlexibleDropDownState extends FlexibleDropDownState {
  const factory _FlexibleDropDownState({required final bool shown}) =
      _$FlexibleDropDownStateImpl;
  const _FlexibleDropDownState._() : super._();

  @override
  bool get shown;

  /// Create a copy of FlexibleDropDownState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlexibleDropDownStateImplCopyWith<_$FlexibleDropDownStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
