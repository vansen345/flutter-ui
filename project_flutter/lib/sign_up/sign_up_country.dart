import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vansen/gen/colors.gen.dart';
import 'package:vansen/sign_up/country_item.dart';
import 'package:vansen/sign_up/sign_up_view_model.dart';
import 'package:vansen/widgets/app_bar.dart';
import 'package:vansen/widgets/button.dart';
import 'package:vansen/widgets/input/input.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpCountry extends GetView<SignUpViewModel> {
  const SignUpCountry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpViewModel());
    return Scaffold(
      appBar: appbarScreen(
        title: 'Home',
        onPressed: () => Get.back(),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(12),
        child: SizedBox(
          width: double.infinity,
          child: VStack(
            [
              'Country'.text.size(20).black.bold.make(),
              const HeightBox(10),
              'Please select your country'
                  .text
                  .size(14)
                  .color(VSColors.k686868)
                  .make(),
              const HeightBox(10),
              InputSearch(
                textEditingController: controller.textEditingController,
                onChanged: (value) {
                  controller.triggerSearch(value);
                },
              ),
              Expanded(
                child: Obx(
                  () => ListView.separated(
                    itemBuilder: (context, index) {
                      return Obx(
                        () => CountryItem(
                          country: controller.listSearch[index],
                          onActionCountry: () => controller.onUpdateCountry(
                              controller.listSearch[index], index),
                          isSelected: controller.selectedIndex.value == index,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => Container(
                      height: 1,
                      color: VSColors.kdddddd,
                    ),
                    itemCount: controller.listSearch.length,
                  ),
                ),
              ),
              const CustomButton(
                title: 'Next',
                textColor: Colors.white,
              ).onTap(
                () {},
              )
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}
