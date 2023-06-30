import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  var usernameController = TextEditingController();
  var passwordControlelr = TextEditingController();
  var errorMessage = ''.obs;
  var canSubmit = false.obs;

  validateUserName() {
    String username = usernameController.text;
    String password = passwordControlelr.text;
  }
}
