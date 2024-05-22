// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:job_asignment_1_ovesh/core/theme/colors.dart';

class FormTextField extends StatelessWidget {
  FormTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.isObscured = false,
    required this.title,
    required this.validator,
    this.suffixIcon,
    this.iconTap,
  });
  TextEditingController controller;
  String? Function(String?)? validator;
  String hintText;
  String title;
  bool isObscured;
  Icon? suffixIcon;
  VoidCallback? iconTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, color: AppPalate.black),
        ),
        const SizedBox(height: 3),
        TextFormField(
          validator: validator,
          controller: controller,
          obscureText: isObscured,
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: AppPalate.grey),
              suffixIcon: suffixIcon != null
                  ? IconButton(onPressed: iconTap, icon: suffixIcon!)
                  : null,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              // floatingLabelBehavior: FloatingLabelBehavior.always,
              errorBorder: myOutlineInputBoder(AppPalate.errorBoder),
              enabledBorder: myOutlineInputBoder(AppPalate.normalBorder),
              focusedBorder: myOutlineInputBoder(AppPalate.focusedBorder),
              border: myOutlineInputBoder(AppPalate.normalBorder)),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

OutlineInputBorder myOutlineInputBoder(Color color,
    [double width = 2, double borderRadius = 5]) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      borderSide: BorderSide(color: color, width: width));
}
