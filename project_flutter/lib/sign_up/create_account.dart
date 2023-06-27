import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vansen/gen/colors.gen.dart';
import 'package:vansen/routes/routes.dart';
import 'package:vansen/widgets/app_bar.dart';
import 'package:vansen/widgets/button.dart';
import 'package:velocity_x/velocity_x.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'Welcome',
        onPressed: () => Get.back(),
      ),
      body: SizedBox(
        width: double.infinity,
        child: VStack(
          [
            const HeightBox(70),
            'Create an account'.text.black.bold.size(30).make(),
            const HeightBox(13),
            "Welcom to PiepMARK, let's sign you up"
                .text
                .color(VSColors.k686868)
                .size(14)
                .make(),
            const HeightBox(34),
            const CustomButton(
              title: 'Sign up',
              textColor: Colors.white,
            ).onTap(
              () {
                Get.toNamed(Routes.signUpCountry);
              },
            ),
            const HeightBox(13),
            haveAccount()
          ],
          crossAlignment: CrossAxisAlignment.center,
        ),
      ).p(12),
    );
  }
}

Widget haveAccount() {
  return HStack(
    [
      'Already have account?'.text.size(14).color(VSColors.k686868).bold.make(),
      const WidthBox(5),
      'Login'.text.color(VSColors.k4d92fb).size(14).bold.make()
    ],
  );
}
