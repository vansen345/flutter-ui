import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vansen/gen/colors.gen.dart';
import 'package:vansen/login/login_view_model.dart';
import 'package:vansen/widgets/app_bar.dart';
import 'package:vansen/widgets/button.dart';
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
            Obx(
              () => InputLogin(
                textEditingController: controller.usernameController,
                isShowPass: true,
                isShow: false,
                colorBorder: controller.errorMessage.isNotEmpty
                    ? Colors.red
                    : VSColors.ke8e8e8,
                isPassword: true,
                placeHolder: 'Email/ phone number'.tr,
                onChanged: (value) {
                  controller.validateUserName();
                },
                errorMessage: controller.errorMessage.value,
              ),
            ),
            const HeightBox(5),
            InputLogin(
              isShowPass: false,
              errorMessage: '',
              colorBorder: VSColors.ke8e8e8,
              placeHolder: 'Password'.tr,
              isPassword: false,
              isShow: true,
              onChanged: (value) {
                controller.validateUserName();
              },
            ).expand(),
            CustomButton(
              title: 'Login'.tr,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
