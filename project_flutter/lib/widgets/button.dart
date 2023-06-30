import 'package:flutter/material.dart';
import 'package:vansen/gen/colors.gen.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.height = 54,
    this.radius = 15,
    this.icon,
    this.title = '',
    this.background,
    this.textColor,
  });

  final String? title;
  final IconData? icon;
  final Color? background;
  final Color? textColor;
  final double height, radius;

  @override
  Widget build(BuildContext context) {
    return VxCapsule(
      height: height,
      backgroundColor: VSColors.k4d92fb,
      child: HStack(
        [
          title!.text.size(16).color(textColor).bold.makeCentered(),
          const WidthBox(10),
          Icon(
            icon,
            color: Colors.white,
            size: 12,
          )
        ],
        alignment: MainAxisAlignment.center,
      ),
    ).cornerRadius(radius);
  }
}
