import 'package:flutter/material.dart';
import 'package:flutter_onboarding/src/models/indicator_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Testing Indicator model', () {
    ActiveIndicator activeIndicator = ActiveIndicator(
        activeIndicatorColor: Colors.green, activeIndicatorRaduis: 30);
    test('Testing activeIndicator Color', () {
      expect(activeIndicator, isNonZero);
    });

    ActiveIndicator activeIndicator0 = ActiveIndicator(
        activeIndicatorColor: Colors.green, activeIndicatorRaduis: 0);
    test('Test zero radios', () {
      expect(activeIndicator0, throwsA(isA<AssertionError>()));
    });

    ActiveIndicator activeIndicatorwithMinus = ActiveIndicator(
        activeIndicatorColor: Colors.green, activeIndicatorRaduis: -2);
    test('Test zero radios', () {
      expect(activeIndicatorwithMinus, throwsA(isA<AssertionError>()));
    });
  });
}
