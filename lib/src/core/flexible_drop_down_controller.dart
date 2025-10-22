import 'package:flutter/material.dart';
import 'package:flutter_toolkit/flutter_toolkit.dart';

import '../models/flexible_drop_down_state/flexible_drop_down_state.dart';

class FlexibleDropDownControllerProvider extends InheritedController {
  const FlexibleDropDownControllerProvider({
    super.key,
    required super.child,
    required super.controller,
  });
}

class FlexibleDropDownController
    extends CustomValueNotifier<FlexibleDropDownState> {
  FlexibleDropDownController([this.initialState]);

  static FlexibleDropDownController? maybeOf(
    BuildContext context, {
    bool createDependency = true,
  }) {
    return InheritedProvider.maybeOf<FlexibleDropDownControllerProvider>(
      context,
      createDependency: createDependency,
    )?.controller;
  }

  static FlexibleDropDownController of(
    BuildContext context, {
    bool createDependency = true,
  }) {
    return InheritedProvider.of<FlexibleDropDownControllerProvider>(
      context,
      createDependency: createDependency,
    ).controller;
  }

  void toggle() {
    setValue(
      value.copyWith(
        shown: !value.shown,
      ),
    );
  }

  void show() {
    setValue(
      value.copyWith(
        shown: true,
      ),
    );
  }

  void hide() {
    setValue(
      value.copyWith(
        shown: false,
      ),
    );
  }

  final FlexibleDropDownState? initialState;

  @override
  FlexibleDropDownState buildState() {
    return initialState ??
        const FlexibleDropDownState(
          shown: false,
        );
  }
}
