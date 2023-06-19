import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vansen/sign_up/sign_up_view_model.dart';
import 'package:vansen/widgets/app_bar.dart';

class SignUpCountry extends GetView<SignUpViewModel> {
  const SignUpCountry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'Home',
        onPressed: () => Get.back(),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(12),
        child: Container(),
      ),
    );
  }
}
