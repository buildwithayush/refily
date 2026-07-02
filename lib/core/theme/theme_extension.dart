import 'package:flutter/material.dart';

extension ThemeContextOnBuildContext on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  // Shortcut for Typography
  TextTheme get textTheme => Theme.of(this).textTheme;
}
