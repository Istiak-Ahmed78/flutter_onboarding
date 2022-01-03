import 'package:flutter/material.dart';

/// Different types of Indicator. Icdiactor types can be [polygone, square, trigonmitik, line]
enum IndicatorType { polygone, square, trigonmitik, line }

///Incator model
class Indicator {
  /// [ActiveIndicator] for active indicator. Cannot be null
  ActiveIndicator activeIndicator;

  /// [ClosedIdicator] for closed indicator. Cannot be null
  ClosedIdicator closedIdicator;

  Indicator({required this.activeIndicator, required this.closedIdicator});
}

///Active indicator Model Defining
class ActiveIndicator extends BaseIdicator {
  ///Defines indicator Color
  final Color activeIndicatorColor;

  ///Border Radius of the indicator
  final double activeIndicatorRaduis;
  ActiveIndicator(
      {required this.activeIndicatorColor, required this.activeIndicatorRaduis})
      : super(color: activeIndicatorColor, borderRadius: activeIndicatorRaduis);
}

///Cloased indicator Model Defining
class ClosedIdicator extends BaseIdicator {
  ///Defines indicator Color
  final Color activeIndicatorColor;

  ///Border Radius of the indicator
  final double activeIndicatorRaduis;
  ClosedIdicator(
      {required this.activeIndicatorColor, required this.activeIndicatorRaduis})
      : super(color: activeIndicatorColor, borderRadius: activeIndicatorRaduis);
}

//Base Idicator Model
abstract class BaseIdicator {
  ///Defines indicator Color
  final Color color;

  ///Border Radius of the indicator
  final double borderRadius;

  const BaseIdicator({required this.color, required this.borderRadius})
      : assert(color != null),
        assert(borderRadius != null),
        assert(borderRadius <= 0,
            'Border Radius cannot be less than Zero or equal to Zero');
}
