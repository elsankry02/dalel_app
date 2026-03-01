import 'package:flutter/material.dart';

extension Extensions on BuildContext {
  double get h => MediaQuery.of(this).size.height;
  double get w => MediaQuery.of(this).size.width;
  TextTheme get textTheme => Theme.of(this).textTheme;
}
