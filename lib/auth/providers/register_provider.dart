import 'package:flutter/cupertino.dart';
import 'package:job_asignment_1_ovesh/auth/models/register_model.dart';
import 'package:job_asignment_1_ovesh/core/theme/colors.dart';

class RegisterProvider extends ChangeNotifier {
  final _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;

// First Name
  final RegisterModel _firstName = RegisterModel(
      controller: TextEditingController(),
      hintText: 'Jane',
      title: 'First Name',
      isObscured: false);

// last name
  final RegisterModel _lastName = RegisterModel(
      controller: TextEditingController(),
      hintText: 'Doe',
      title: 'Last Name',
      isObscured: false);

// Email
  final RegisterModel _email = RegisterModel(
      controller: TextEditingController(),
      hintText: 'jane@doe.com',
      title: 'Email',
      isObscured: false);

// password
  bool _isObscured = true;
  get isObscured => _isObscured;
  set isObscured(value) {
    _isObscured = value;
    notifyListeners();
  }

  final TextEditingController passwordController = TextEditingController();
  RegisterModel _password() {
    return RegisterModel(
        controller: passwordController,
        iconTap: () {
          isObscured = !isObscured;
          notifyListeners();
        },
        hintText: 'Doe123@',
        suffixIcon: Icon(
          _isObscured
              ? CupertinoIcons.eye_solid
              : CupertinoIcons.eye_slash_fill,
          color: AppPalate.grey,
        ),
        title: 'Password',
        isObscured: _isObscured);
  }

// privacy Policy
  bool _policyCheckBox = false;
  set policyCheckBox(value) {
    _policyCheckBox = value;
    notifyListeners();
  }

  final String _policyCheckBoxText = 'I have read and accept the ';
  final String _policyCheckBoxText2 = 'Company Privacy Policy';

// Get all variable
  String get policyCheckBoxText => _policyCheckBoxText;
  String get policyCheckBoxText2 => _policyCheckBoxText2;
  bool get policyCheckBox => _policyCheckBox;
  RegisterModel get firstName => _firstName;
  RegisterModel get lastName => _lastName;
  RegisterModel get email => _email;
  RegisterModel get password => _password();
}
