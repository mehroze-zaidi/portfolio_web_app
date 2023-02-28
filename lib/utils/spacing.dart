import 'package:flutter/material.dart';

extension DoubleExtension on num {
  // Use to add horizontal space
  SizedBox get horizontalSpace => SizedBox(width: this.toDouble());

  // Use to add vertical space
  SizedBox get verticalSpace => SizedBox(height:this.toDouble());
}