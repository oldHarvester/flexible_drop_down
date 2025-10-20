import 'dart:async';

import 'package:flexible_drop_down/src/widget_position_listener/models/widget_position_id.dart';
import 'package:flexible_drop_down/src/widget_position_listener/models/widget_position_metrics.dart';
import 'package:flexible_drop_down/src/widget_position_listener/widget_position_controller.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class WidgetPositionListener extends StatefulWidget {
  const WidgetPositionListener({
    super.key,
    required this.child,
    required this.positionListener,
  });

  final void Function(
    WidgetPositionMetrics metrics,
    VisibilityInfo visibilityInfo,
  )
  positionListener;
  final Widget child;

  @override
  State<WidgetPositionListener> createState() => _WidgetPositionListenerState();
}

class _WidgetPositionListenerState extends State<WidgetPositionListener> {
  late final WidgetPositionId id;
  late final Key _visibilityKey = UniqueKey();
  final positionController = WidgetPositionController.instance;
  StreamSubscription<WidgetPositionUpdateEvent>? _positionListener;
  WidgetPositionMetrics? metrics;

  @override
  void initState() {
    super.initState();
    id = positionController.add(_visibilityKey);
    _startPositionListener();
  }

  void _startPositionListener() {
    _positionListener ??= positionController.eventStream.listen(
      (event) {
        if (mounted) {
          final metrics = WidgetPositionMetrics.fromContext(context);
          if (metrics != null) {}
        }
      },
    );
  }

  void _stopPositionListener() {
    _positionListener?.cancel();
    _positionListener = null;
  }

  @override
  void dispose() {
    _stopPositionListener();
    positionController.remove(id);
    VisibilityDetectorController.instance.forget(_visibilityKey);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: _visibilityKey,
      onVisibilityChanged: (info) {
        final isVisible = info.visibleFraction > 0;
        positionController.changeVisible(id, info);
        if (isVisible) {
          _startPositionListener();
        } else {
          _stopPositionListener();
        }
      },
      child: widget.child,
    );
  }
}
