import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:flutter_toolkit/flutter_toolkit.dart';
import 'package:uuid/v4.dart';
import 'package:widget_position_listener/widget_position_listener.dart';

import '../../flexible_drop_down.dart';

// Alignment.bottomCenter, Alignment.topCenter - (0.0, 1.0), (0.0, -1.0)

// Alignment.centerRight, Aligmnent.centerLeft - (1.0, 0.0), (-1.0, 0.0)

class FlexibleDropDown extends StatefulWidget {
  const FlexibleDropDown({
    super.key,
    this.debugLabel,
    this.spacing = 8,
    this.useHoverDetector = true,
    this.alignment = const FlexibleDropDownAlignment(
      followerAnchor: Alignment.topCenter,
      targetAnchor: Alignment.bottomCenter,
    ),
    this.controller,
    this.showOnTap = false,
    this.showOnHover = false,
    this.showInitial = false,
    this.tapGroupId,
    this.overrideShow,
    required this.child,
    required this.targetBuilder,
  });

  final FlexibleDropDownController? controller;
  final FlexibleDropDownAlignment alignment;
  final String? debugLabel;
  final bool showOnHover;
  final bool showOnTap;
  final double spacing;
  final String? tapGroupId;
  final Widget child;
  final bool useHoverDetector;
  final Widget Function(BuildContext context, FlexibleDropDownInfo info)
  targetBuilder;
  final bool? overrideShow;
  final bool showInitial;

  @override
  State<FlexibleDropDown> createState() => _FlexibleDropDownState();
}

class _FlexibleDropDownState extends State<FlexibleDropDown>
    with WidgetsBindingObserver {
  final GlobalKey _followerKey = GlobalKey();

  final GlobalKey _targetKey = GlobalKey();

  late final OverlayPortalController _portalController =
      OverlayPortalController(debugLabel: widget.debugLabel);

  late final FlexibleDropDownController _dropDownController =
      widget.controller ??
      FlexibleDropDownController(
        FlexibleDropDownState(shown: widget.overrideShow ?? widget.showInitial),
      );

  final LayerLink _layerLink = LayerLink();

  FlexibleDropDownDirection get direction =>
      FlexibleDropDownDirection.fromDropDownAlignment(
        alignment: widget.alignment,
      );

  late final String _tapGroupId;

  final executor = SafeExecutor();

  @override
  void initState() {
    super.initState();
    _portalController.show();
    _tapGroupId = widget.tapGroupId ?? const UuidV4().generate();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didUpdateWidget(covariant FlexibleDropDown oldWidget) {
    final oldOverride = oldWidget.overrideShow;
    final currentOverride = widget.overrideShow;
    if (oldOverride != currentOverride) {
      if (currentOverride != null) {
        executor.perform(() {
          if (mounted) {
            if (currentOverride) {
              _dropDownController.show();
            } else {
              _dropDownController.hide();
            }
          }
        });
      }
    }
    super.didUpdateWidget(oldWidget);
  }

  Widget _showWhenHovered({
    bool enable = false,
    required bool isOverlay,
    required Widget child,
  }) {
    if (!enable) {
      return child;
    }
    return MouseRegion(
      onEnter: (event) {
        if (widget.showOnHover) {
          _dropDownController.show();
        }
        if (isOverlay) {
          _onEnterHover();
        }
      },
      onExit: (event) {
        if (widget.showOnHover) {
          _dropDownController.hide();
        }
        if (isOverlay) {
          _onExitHover();
        }
      },
      child: child,
    );
  }

  void _onEnterHover() {}

  void _onExitHover() {}

  SlideApearAnimationType get slideType {
    return switch (direction) {
      FlexibleDropDownDirection.left => SlideApearAnimationType.right,
      FlexibleDropDownDirection.right => SlideApearAnimationType.left,
      FlexibleDropDownDirection.down => SlideApearAnimationType.top,
      FlexibleDropDownDirection.up => SlideApearAnimationType.bottom,
    };
  }

  Widget _buildWithTap({
    required bool enable,
    required bool hideOnTapOutside,
    required bool showOnTapInside,
    required Widget child,
  }) {
    if (!enable) {
      return child;
    } else {
      return TapRegion(
        behavior: HitTestBehavior.translucent,
        groupId: _tapGroupId,
        onTapOutside: (event) {
          if (hideOnTapOutside) {
            _dropDownController.hide();
          }
        },
        onTapInside: (event) {
          if (showOnTapInside) {
            _dropDownController.show();
          }
        },
        child: child,
      );
    }
  }

  Offset get dropDownOffset {
    final spacing = widget.spacing;
    return switch (direction) {
      FlexibleDropDownDirection.left => Offset(0, -spacing),
      FlexibleDropDownDirection.right => Offset(spacing, 0),
      FlexibleDropDownDirection.down => Offset(0, spacing),
      FlexibleDropDownDirection.up => Offset(0, -spacing),
    };
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _dropDownController.dispose();
    }
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void log([Object? object, bool onlyLabeled = true]) {
    final debugLabel = widget.debugLabel;
    void print() {
      dev.log(
        object.toString(),
        name: debugLabel ?? widget.runtimeType.toString(),
      );
    }

    if (onlyLabeled) {
      if (debugLabel != null) {
        print();
      }
    } else {
      print();
    }
  }

  void onPositionChanged(WidgetPositionState state) {
    final positionMetrics = state.positionMetrics;
    final visibleBounds = positionMetrics.visibleBounds();
    final bounds = positionMetrics.bounds;
    print(
      'position changed visible - ${(visibleBounds.size, visibleBounds)}, bounds - ${bounds.size}',
    );
  }

  @override
  Widget build(BuildContext context) {
    final enableHover = widget.showOnHover || widget.useHoverDetector;
    return FlexibleDropDownControllerProvider(
      controller: _dropDownController,
      child: _showWhenHovered(
        isOverlay: false,
        enable: enableHover,
        child: _buildWithTap(
          hideOnTapOutside: true,
          showOnTapInside: widget.showOnTap,
          enable: true,
          child: CompositedTransformTarget(
            link: _layerLink,
            child: OverlayPortal(
              controller: _portalController,
              overlayChildBuilder: (context) {
                return Positioned(
                  left: 0,
                  top: 0,
                  child: KeyedSubtree(
                    key: _targetKey,
                    child: CompositedTransformFollower(
                      link: _layerLink,
                      showWhenUnlinked: false,
                      offset: dropDownOffset,
                      targetAnchor: widget.alignment.targetAnchor,
                      followerAnchor: widget.alignment.followerAnchor,
                      child: KeyedSubtree(
                        key: _followerKey,
                        child: WidgetPositionListener(
                          onChange: (id, positionState, type) {
                            if (type == WidgetPositionUpdatedType.position) {
                              onPositionChanged(positionState);
                            }
                          },
                          child: ValueListenableBuilder(
                            valueListenable: _dropDownController,
                            builder: (context, value, child) {
                              final show = value.shown;
                              return SlideApearAnimation(
                                show: show,
                                type: slideType,
                                child: _showWhenHovered(
                                  isOverlay: true,
                                  enable: enableHover,
                                  child: TapRegion(
                                    groupId: _tapGroupId,
                                    child: widget.targetBuilder(
                                      context,
                                      FlexibleDropDownInfo(
                                        tapGroupId: _tapGroupId,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }
}
