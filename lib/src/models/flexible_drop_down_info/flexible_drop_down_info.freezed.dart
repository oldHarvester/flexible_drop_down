// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flexible_drop_down_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FlexibleDropDownInfo {
  String get tapGroupId => throw _privateConstructorUsedError;

  /// Create a copy of FlexibleDropDownInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlexibleDropDownInfoCopyWith<FlexibleDropDownInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlexibleDropDownInfoCopyWith<$Res> {
  factory $FlexibleDropDownInfoCopyWith(
    FlexibleDropDownInfo value,
    $Res Function(FlexibleDropDownInfo) then,
  ) = _$FlexibleDropDownInfoCopyWithImpl<$Res, FlexibleDropDownInfo>;
  @useResult
  $Res call({String tapGroupId});
}

/// @nodoc
class _$FlexibleDropDownInfoCopyWithImpl<
  $Res,
  $Val extends FlexibleDropDownInfo
>
    implements $FlexibleDropDownInfoCopyWith<$Res> {
  _$FlexibleDropDownInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlexibleDropDownInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tapGroupId = null}) {
    return _then(
      _value.copyWith(
            tapGroupId: null == tapGroupId
                ? _value.tapGroupId
                : tapGroupId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FlexibleDropDownInfoImplCopyWith<$Res>
    implements $FlexibleDropDownInfoCopyWith<$Res> {
  factory _$$FlexibleDropDownInfoImplCopyWith(
    _$FlexibleDropDownInfoImpl value,
    $Res Function(_$FlexibleDropDownInfoImpl) then,
  ) = __$$FlexibleDropDownInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tapGroupId});
}

/// @nodoc
class __$$FlexibleDropDownInfoImplCopyWithImpl<$Res>
    extends _$FlexibleDropDownInfoCopyWithImpl<$Res, _$FlexibleDropDownInfoImpl>
    implements _$$FlexibleDropDownInfoImplCopyWith<$Res> {
  __$$FlexibleDropDownInfoImplCopyWithImpl(
    _$FlexibleDropDownInfoImpl _value,
    $Res Function(_$FlexibleDropDownInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FlexibleDropDownInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tapGroupId = null}) {
    return _then(
      _$FlexibleDropDownInfoImpl(
        tapGroupId: null == tapGroupId
            ? _value.tapGroupId
            : tapGroupId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$FlexibleDropDownInfoImpl implements _FlexibleDropDownInfo {
  const _$FlexibleDropDownInfoImpl({required this.tapGroupId});

  @override
  final String tapGroupId;

  @override
  String toString() {
    return 'FlexibleDropDownInfo(tapGroupId: $tapGroupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlexibleDropDownInfoImpl &&
            (identical(other.tapGroupId, tapGroupId) ||
                other.tapGroupId == tapGroupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tapGroupId);

  /// Create a copy of FlexibleDropDownInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlexibleDropDownInfoImplCopyWith<_$FlexibleDropDownInfoImpl>
  get copyWith =>
      __$$FlexibleDropDownInfoImplCopyWithImpl<_$FlexibleDropDownInfoImpl>(
        this,
        _$identity,
      );
}

abstract class _FlexibleDropDownInfo implements FlexibleDropDownInfo {
  const factory _FlexibleDropDownInfo({required final String tapGroupId}) =
      _$FlexibleDropDownInfoImpl;

  @override
  String get tapGroupId;

  /// Create a copy of FlexibleDropDownInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlexibleDropDownInfoImplCopyWith<_$FlexibleDropDownInfoImpl>
  get copyWith => throw _privateConstructorUsedError;
}
