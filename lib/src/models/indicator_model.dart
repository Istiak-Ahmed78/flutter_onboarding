import 'package:flutter/material.dart';

enum IndicatorType { polygone, square, trigonmitik, line }

class Indicator {
  ActiveIndicator activeIndicator;
  ClosedIdicator closedIdicator;

  Indicator({required this.activeIndicator, required this.closedIdicator});
}

class ActiveIndicator extends BaseIdicator {
  final Color activeIndicatorColor;
  final double activeIndicatorWidth;
  ActiveIndicator(
      {required this.activeIndicatorColor, required this.activeIndicatorWidth})
      : super(color: activeIndicatorColor, borderWidth: activeIndicatorWidth);
}

class ClosedIdicator extends BaseIdicator {
  final Color closedIndicatorColor;
  final double closedIndicatorWidth;
  ClosedIdicator(
      {required this.closedIndicatorColor, required this.closedIndicatorWidth})
      : super(color: closedIndicatorColor, borderWidth: closedIndicatorWidth);
}

abstract class BaseIdicator {
  final Color color;
  final double borderWidth;

  const BaseIdicator({required this.color, required this.borderWidth})
      : assert(color != null),
        assert(borderWidth != null),
        assert(borderWidth <= 0,
            'Border Radius cannot be less than Zero or equal to Zero');
}
