import 'package:flutter/cupertino.dart';

class RegisterProvider extends ChangeNotifier {
  final _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;

  final _fNameController = TextEditingController();
  final _lNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  TextEditingController get fNameController => _fNameController;
  TextEditingController get lNameController => _lNameController;
  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;

// password
  bool _isObscured = true;
  get isObscured => _isObscured;
  set isObscured(value) {
    _isObscured = value;
    notifyListeners();
  }

// privacy Policy
  bool _policyCheckBox = false;
  bool get policyCheckBox => _policyCheckBox;
  set policyCheckBox(value) {
    _policyCheckBox = value;
    notifyListeners();
  }
}
