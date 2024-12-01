import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  double get height => _mediaQueryData.size.height;

  double get width => _mediaQueryData.size.width;

  EdgeInsets get padding => _mediaQueryData.padding;

  MediaQueryData get _mediaQueryData => MediaQuery.of(this);
}
