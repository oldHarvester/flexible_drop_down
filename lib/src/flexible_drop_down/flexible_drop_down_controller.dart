part of 'flexible_drop_down.dart';

class FlexibleDropDownControllerProvider extends InheritedWidget {
  const FlexibleDropDownControllerProvider({
    super.key,
    required super.child,
    required this.controller,
  });

  final FlexibleDropDownController controller;

  @override
  bool updateShouldNotify(
    covariant FlexibleDropDownControllerProvider oldWidget,
  ) {
    return controller != oldWidget.controller;
  }
}

class FlexibleDropDownState with EquatableMixin {
  const FlexibleDropDownState({required this.shown});
  final bool shown;

  bool get hiden => !shown;

  @override
  List<Object?> get props => [shown];

  FlexibleDropDownState copyWith({
    bool? shown,
  }) {
    return FlexibleDropDownState(
      shown: shown ?? this.shown,
    );
  }
}

class FlexibleDropDownController extends ValueNotifier<FlexibleDropDownState> {
  FlexibleDropDownController([FlexibleDropDownState? initialState])
      : super(
          initialState ??
              const FlexibleDropDownState(
                shown: false,
              ),
        );

  static FlexibleDropDownController? maybeOf(
    BuildContext context, {
    bool createDependency = true,
  }) {
    try {
      return of(
        context,
        createDependency: createDependency,
      );
    } catch (e) {
      return null;
    }
  }

  static FlexibleDropDownController of(
    BuildContext context, {
    bool createDependency = true,
  }) {
    try {
      if (createDependency) {
        return context
            .getInheritedWidgetOfExactType<
                FlexibleDropDownControllerProvider>()!
            .controller;
      }
      return context
          .dependOnInheritedWidgetOfExactType<
              FlexibleDropDownControllerProvider>()!
          .controller;
    } catch (e) {
      throw UnimplementedError(
        'FlexibleDropDownControllerProvider not found in BuildContext',
      );
    }
  }

  void toggle() {
    value = value.copyWith(
      shown: !value.shown,
    );
  }

  void show() {
    value = value.copyWith(
      shown: true,
    );
  }

  void hide() {
    value = value.copyWith(
      shown: false,
    );
  }
}
