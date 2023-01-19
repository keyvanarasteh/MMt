import 'package:flutter/cupertino.dart';
import '../const/constants.dart';

extension ContextExtension on BuildContext {
  Size get screnSize => MediaQuery.of(this).size;

  double responsive(double size, {Axis axis = Axis.vertical}) {
    final currentSize =
        axis == Axis.horizontal ? screnSize.width : screnSize.height;
    final designSize = axis == Axis.horizontal
        ? designScreenSize.width
        : designScreenSize.height;

    return size * currentSize / designSize;
  }
}
