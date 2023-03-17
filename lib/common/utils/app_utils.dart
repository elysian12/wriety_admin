import 'package:flutter/material.dart';

class ScreenUtils {
  static const double figmaScreenHeight = 1024;
  static const double figmaScreenWidth = 1440;

  static final double screenHeight =
      WidgetsBinding.instance.window.physicalSize.height /
          WidgetsBinding.instance.window.devicePixelRatio;
  static final double screenWidth =
      WidgetsBinding.instance.window.physicalSize.width /
          WidgetsBinding.instance.window.devicePixelRatio;
}

/// Converts the value with respect to the component:figma Screen ratio.
extension ResponsiveIntegerConstraints on num {
  double responsiveHeight() {
    return this * ScreenUtils.screenHeight / ScreenUtils.figmaScreenHeight;
  }

  double responsiveWidth() {
    return this * ScreenUtils.screenWidth / ScreenUtils.figmaScreenWidth;
  }
}

extension ScreenDimensions on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;

  double get screenWidth => MediaQuery.of(this).size.width;
}

extension ResponsiveEdgeInsets on EdgeInsets {
  EdgeInsets responsive() => copyWith(
        left: left.responsiveWidth(),
        right: right.responsiveWidth(),
        top: top.responsiveHeight(),
        bottom: bottom.responsiveHeight(),
      );
}
