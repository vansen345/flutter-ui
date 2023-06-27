import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vansen/gen/assets.gen.dart';
import 'package:vansen/gen/colors.gen.dart';
import 'package:vansen/icon/icons.dart';
import 'package:vansen/routes/routes.dart';
import 'package:vansen/widgets/button.dart';
import 'package:velocity_x/velocity_x.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: VStack(
          [
            Assets.images.openSign.image(
              width: 254,
              height: 254,
            ),
            const HeightBox(13),
            'Welcome'.text.size(30).black.bold.make().centered(),
            const HeightBox(13),
            'Let shopping'
                .text
                .size(14)
                .color(VSColors.k686868)
                .make()
                .centered(),
            const HeightBox(13),
            const CustomButton(
              background: VSColors.k4d92fb,
              title: 'Get start',
              textColor: Colors.white,
              radius: 5,
              icon: VSIcons.next,
            ).onTap(
              () => Get.toNamed(Routes.createAccount),
            )
            // VxCapsule(
            //   height: 54,
            //   backgroundColor: AppColors.k4d92fb,
            //   child: 'Get start'.text.size(16).white.bold.makeCentered(),
            // )
          ],
          axisSize: MainAxisSize.max,
          alignment: MainAxisAlignment.center,
          crossAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}
