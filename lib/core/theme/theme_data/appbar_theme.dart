import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_asignment_1_ovesh/core/theme/colors.dart';

AppBarTheme appbarTheme() {
  return AppBarTheme(
      surfaceTintColor: AppPalate.white,
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarColor: AppPalate.white));
}
