import 'package:equatable/equatable.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'package:flexible_drop_down/src/widget_position_listener/extensions/visibility_info_extension.dart';
import 'package:flexible_drop_down/src/widget_position_listener/models/widget_position_metrics.dart';

class WidgetPositionState with EquatableMixin {
  const WidgetPositionState({
    required this.visibilityInfo,
    required this.positionMetrics,
  });

  factory WidgetPositionState.zero(VisibilityInfo info) {
    return WidgetPositionState(
      visibilityInfo: info,
      positionMetrics: WidgetPositionMetrics.zero(),
    );
  }

  final VisibilityInfo visibilityInfo;
  final WidgetPositionMetrics positionMetrics;

  bool get visible => visibilityInfo.isVisible;

  @override
  List<Object?> get props => [
    visibilityInfo.size,
    visibilityInfo.visibleBounds,
    visibilityInfo.visibleFraction,
    positionMetrics,
  ];

  WidgetPositionState copyWith({
    VisibilityInfo? visibilityInfo,
    WidgetPositionMetrics? positionMetrics,
  }) {
    return WidgetPositionState(
      visibilityInfo: visibilityInfo ?? this.visibilityInfo,
      positionMetrics: positionMetrics ?? this.positionMetrics,
    );
  }
}
