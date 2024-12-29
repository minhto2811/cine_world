import 'dart:ui';

extension StringExtension on String {
  Locale get toLocale => Locale(this);
}
