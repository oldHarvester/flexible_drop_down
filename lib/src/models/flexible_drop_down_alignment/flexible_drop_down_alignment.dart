// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flexible_drop_down_alignment.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class FlexibleDropDownAlignment with _$FlexibleDropDownAlignment {
  const FlexibleDropDownAlignment._();

  const factory FlexibleDropDownAlignment({
    required Alignment followerAnchor,
    required Alignment targetAnchor,
  }) = _FlexibleDropDownAlignment;
}
