import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class UiResponsivelayout {
  const UiResponsivelayout();

  Widget responsiveWidget({required Widget widget1, required Widget widget2, Function(dynamic value)? condition}) {
    if(condition!(widget1)) {
      return widget1;
    }
    else {
      return widget2;
    }
  }

  double responsiveValues({
    required double firstValue, required double secondValue, 
    Function(dynamic value)? condition}) {
    if(condition!(firstValue)) {
      return firstValue;
    }
    else {
      return secondValue;
    }
  }

}