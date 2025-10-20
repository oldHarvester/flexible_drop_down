import 'package:visibility_detector/visibility_detector.dart';

extension VisibilityInfoExtension on VisibilityInfo {
  bool get isVisible => visibleFraction > 0;
}
