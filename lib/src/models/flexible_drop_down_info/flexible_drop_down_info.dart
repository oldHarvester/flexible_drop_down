import 'package:freezed_annotation/freezed_annotation.dart';

part 'flexible_drop_down_info.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class FlexibleDropDownInfo with _$FlexibleDropDownInfo {
  const factory FlexibleDropDownInfo({
    required String tapGroupId,
  }) = _FlexibleDropDownInfo;
}
