import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_asignment_1_ovesh/auth/providers/landing_page_provider.dart';
import 'package:job_asignment_1_ovesh/auth/providers/register_provider.dart';
import 'package:job_asignment_1_ovesh/auth/screens/registration_screen.dart';
import 'package:job_asignment_1_ovesh/core/theme/theme_data/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => RegisterProvider()),
        ChangeNotifierProvider(create: (context) => LandingPageProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: MediaQuery.of(context).size,
      builder: (_, child) {
        return MaterialApp(
            theme: AppTheme.lightThemeData,
            debugShowCheckedModeBanner: false,
            home: const RegisterPage());
      },
    );
  }
}
