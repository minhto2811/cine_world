import 'dart:ui';

extension StringExtension on String {
  Locale get toLocale => Locale(substring(0, 2), substring(3));
}
