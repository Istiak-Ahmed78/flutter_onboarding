import 'package:flutter/material.dart';
import 'package:flutter_onboarding/src/models/indicator_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Testing Indicator model', () {
    ActiveIndicator activeIndicator0 = ActiveIndicator(
        activeIndicatorColor: Colors.green, activeIndicatorWidth: 0);
    // test('Test zero width', () {
    //   expect(activeIndicator0, throwsA(isA<AssertionError>()));
    // });

    // ActiveIndicator activeIndicatorwithMinusRaius = ActiveIndicator(
    //     activeIndicatorColor: Colors.green, activeIndicatorWidth: -2);
    // test('Test negative width', () {
    //   expect(activeIndicatorwithMinusRaius, throwsA(isA<AssertionError>()));
    // });
  });
}
