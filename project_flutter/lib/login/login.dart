import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:vansen/gen/colors.gen.dart';
import 'package:vansen/icon/icons.dart';
import 'package:vansen/login/login_view_model.dart';
import 'package:vansen/widgets/app_bar.dart';
import 'package:vansen/widgets/input/input_login.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends GetView<LoginViewModel> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginViewModel());
    return Scaffold(
      appBar: appbarScreen(
        title: 'Home',
        onPressed: () => Get.back(),
      ),
      body: SafeArea(
        minimum: EdgeInsets.symmetric(
          vertical: Get.mediaQuery.padding.top + 20,
          horizontal: 20,
        ),
        child: VStack(
          [
            'Welcome'.text.size(30).black.bold.make().centered(),
            const HeightBox(15),
            "Welcom to PiepMARK, let's sign you in"
                .text
                .size(14)
                .color(VSColors.k686868)
                .make()
                .centered(),
            const HeightBox(30),
            InputLogin(
              isShowPass: true,
              isShow: false,
              isPassword: true,
              placeHolder: 'Email/ phone number'.tr,
            ),
            const HeightBox(20),
            InputLogin(
              isShowPass: false,
              placeHolder: 'Password'.tr,
              isPassword: false,
              isShow: true,
            )
          ],
          crossAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}
