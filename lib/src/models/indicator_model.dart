import 'package:flutter/material.dart';

enum IndicatorType { polygone, square, trigonmitik, line }

/// [Indicator] is model of every step dots
class Indicator {
  ///[activeIndicator] describs active idicator style and color
  ActiveIndicator activeIndicator;

  ///[closedIdicator] describs closed idicator style and color
  ClosedIdicator closedIdicator;

  Indicator({required this.activeIndicator, required this.closedIdicator});
}

class ActiveIndicator extends BaseIdicator {
  /// Color for active indicator. [required] cannont be null
  final Color activeIndicatorColor;

  ///active idicator width.
  final double activeIndicatorWidth;

  ActiveIndicator(
      {required this.activeIndicatorColor, required this.activeIndicatorWidth})
      : super(color: activeIndicatorColor, borderWidth: activeIndicatorWidth);
}

class ClosedIdicator extends BaseIdicator {
  /// Color for closed indicator. [required] cannont be null
  final Color closedIndicatorColor;

  ///closed idicator width.
  final double closedIndicatorWidth;

  ClosedIdicator(
      {required this.closedIndicatorColor, required this.closedIndicatorWidth})
      : super(color: closedIndicatorColor, borderWidth: closedIndicatorWidth);
}

///Base Idicator model
abstract class BaseIdicator {
  ///Colors For Indicators
  final Color color;

  ///Border width of the idicator
  final double borderWidth;

  const BaseIdicator({required this.color, required this.borderWidth})
      : assert(color != null),
        assert(borderWidth != null),
        assert(borderWidth <= 0,
            'Border Radius cannot be less than Zero or equal to Zero');
}
