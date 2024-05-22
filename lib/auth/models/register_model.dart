// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class RegisterModel {
  TextEditingController controller;
  String hintText;
  String title;
  bool isObscured;
  Icon? suffixIcon;
  VoidCallback? iconTap;
  RegisterModel({
    required this.controller,
    required this.hintText,
    required this.title,
    required this.isObscured,
    this.suffixIcon,
    this.iconTap,
  });
}
