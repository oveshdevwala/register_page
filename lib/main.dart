import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_asignment_1_ovesh/auth/providers/register_provider.dart';
import 'package:job_asignment_1_ovesh/auth/screens/registration_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: MediaQuery.of(context).size,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MultiProvider(
            providers: [
              ChangeNotifierProvider(
                create: (context) => RegisterProvider(),
              )
            ],
            child: const RegisterPage(),
          ),
        );
      },
    );
  }
}
