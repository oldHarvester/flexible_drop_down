// ignore_for_file: unused_element

import 'package:freezed_annotation/freezed_annotation.dart';

part 'flexible_drop_down_state.freezed.dart';

@freezed
abstract class FlexibleDropDownState with _$FlexibleDropDownState {
  const FlexibleDropDownState._();

  const factory FlexibleDropDownState({
    required bool shown,
  }) = _FlexibleDropDownState;
}
