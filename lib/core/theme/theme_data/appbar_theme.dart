import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_asignment_1_ovesh/core/theme/colors.dart';

AppBarTheme appbarTheme() {
  return AppBarTheme(
      backgroundColor: AppPalate.white,
      surfaceTintColor: AppPalate.white,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppPalate.white,
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light,
      ));
}
