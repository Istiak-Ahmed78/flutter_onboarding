import 'package:flutter/cupertino.dart';
import 'package:flutter_onboarding/src/utils/button_constants.dart';

class SkipButtonStyleModel {
  final Color buttonColor;
  final Text buttonText;
  final EdgeInsets buttonPadding;
  final double buttonBorderRaduis;

  ///Skip button style
  SkipButtonStyleModel(
      {this.buttonText = DefaultSkipButtonStyle.defaultSkipText,
      this.buttonPadding = DefaultSkipButtonStyle.defaultPadding,
      this.buttonColor = DefaultSkipButtonStyle.defaultButtonColor,
      this.buttonBorderRaduis = DefaultSkipButtonStyle.defaultBorderRaduis});
}

///Next Button style
class NextButtonStyle {
  final Color buttonColor;
  final Text buttonText;
  final EdgeInsets buttonPadding;
  final double buttonBorderRaduis;

  NextButtonStyle(
      {this.buttonPadding = DeafultPreccedButtonStrle.defaultPadding,
      this.buttonText = DeafultPreccedButtonStrle.defaultProccedText,
      this.buttonColor = DeafultPreccedButtonStrle.defaultButtonColor,
      this.buttonBorderRaduis = DeafultPreccedButtonStrle.defaultBorderRaduis});
}
