import 'package:flexible_drop_down/src/models/flexible_drop_down_alignment/flexible_drop_down_alignment.dart';

enum FlexibleDropDownDirection {
  down,
  up,
  left,
  right;

  static FlexibleDropDownDirection fromDropDownAlignment({
    required FlexibleDropDownAlignment alignment,
  }) {
    final followerAnchor = alignment.followerAnchor;
    final targetAnchor = alignment.targetAnchor;
    final fx = followerAnchor.x;
    final fy = followerAnchor.y;
    final tx = targetAnchor.x;
    final ty = targetAnchor.y;
    if (tx == 1 && fx == -1) {
      return FlexibleDropDownDirection.right;
    } else if (tx == -1 && fx == 1) {
      return FlexibleDropDownDirection.left;
    } else if (ty == -1 && fy == 1) {
      return FlexibleDropDownDirection.up;
    } else if (ty == 1 && fy == -1) {
      return FlexibleDropDownDirection.down;
    }
    return FlexibleDropDownDirection.down;
  }
}
