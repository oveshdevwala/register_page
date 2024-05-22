import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_asignment_1_ovesh/auth/providers/register_provider.dart';
import 'package:job_asignment_1_ovesh/auth/screens/landing_screen.dart';
import 'package:job_asignment_1_ovesh/auth/widgets/form_field.dart';
import 'package:job_asignment_1_ovesh/core/constant/auth_text.dart';
import 'package:job_asignment_1_ovesh/core/theme/colors.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalate.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child:
              Consumer<RegisterProvider>(builder: (context, provider, child) {
            return Form(
              key: provider.formKey,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 30),
                          Text(
                            'Sign up for free',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppPalate.grey,
                                fontSize: 12),
                          ),
                          Text(
                            'Get Started',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppPalate.black,
                                fontSize: 27.w),
                          ),
                          const SizedBox(height: 20),
                          FormTextField(
                            controller: provider.fNameController,
                            hintText: 'Jane',
                            title: 'First Name',
                            validator: (value) {
                              if (value!.length < 5) {
                                return '• First Name must be at least 5 characters';
                              }
                              return null;
                            },
                          ),
                          FormTextField(
                            controller: provider.lNameController,
                            hintText: 'Doe',
                            title: 'Last Name',
                            validator: (value) {
                              if (value!.length < 5) {
                                return '• last Name must be at least 5 characters';
                              }
                              return null;
                            },
                          ),
                          FormTextField(
                            controller: provider.emailController,
                            hintText: 'jane@doe.com',
                            title: 'Email',
                            validator: (value) {
                              if (!value!.contains(RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))) {
                                return '• Enter valid email address';
                              }

                              return null;
                            },
                          ),
                          FormTextField(
                            controller: provider.passwordController,
                            hintText: '',
                            isObscured: provider.isObscured,
                            title: 'Password',
                            iconTap: () {
                              provider.isObscured = !provider.isObscured;
                            },
                            suffixIcon: Icon(
                              provider.isObscured
                                  ? CupertinoIcons.eye_solid
                                  : CupertinoIcons.eye_slash_fill,
                              color: AppPalate.grey,
                            ),
                            validator: (value) {
                              String erroMsg = '';

                              if (value!.length < 5) {
                                erroMsg +=
                                    '• Password must be at least 8 characters\n';
                              }
                              if (!value.contains(RegExp(r'[A-Z]'))) {
                                erroMsg += '• Uppercase letter is missing\n';
                              }
                              if (!value.contains(RegExp(r'[a-z]'))) {
                                erroMsg += '• lowercase letter is missing\n';
                              }
                              if (erroMsg == '') {
                                return null;
                              }
                              return erroMsg;
                            },
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Checkbox(
                                value: provider.policyCheckBox,
                                onChanged: (value) {
                                  provider.policyCheckBox = value;
                                },
                                visualDensity: VisualDensity.comfortable,
                                activeColor: AppPalate.buttonBlue,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    const SizedBox(height: 10),
                                    Text.rich(
                                      maxLines: 3,
                                      style: const TextStyle(),
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: AuthTextConst
                                                .policyCheckBoxText,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: AppPalate.black,
                                              fontSize: 13,
                                            ),
                                          ),
                                          TextSpan(
                                            text: AuthTextConst
                                                .policyCheckBoxText2,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: AppPalate.black,
                                              decorationStyle:
                                                  TextDecorationStyle.solid,
                                              decorationThickness: 2.2,
                                              decoration:
                                                  TextDecoration.underline,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {
                                  if (provider.formKey.currentState!
                                      .validate()) {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(
                                      builder: (context) {
                                        return const LandingScreen();
                                      },
                                    ));
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(1)),
                                    backgroundColor: AppPalate.buttonBlue),
                                child: Text('Continue with Email',
                                    style: TextStyle(color: AppPalate.white))),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Have an a account? Sign in',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppPalate.black),
                      ))
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}

/// Provider
/// Screen Util
