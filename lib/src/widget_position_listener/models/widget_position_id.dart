import 'package:equatable/equatable.dart';
import 'package:uuid/v4.dart';

final class WidgetPositionId extends Equatable {
  const WidgetPositionId(this.id);
  final String id;

  static WidgetPositionId generate() {
    return WidgetPositionId(
      UuidV4().generate(),
    );
  }

  @override
  List<Object?> get props => [id];
}
