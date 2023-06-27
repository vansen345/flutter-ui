import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vansen/gen/colors.gen.dart';
import 'package:vansen/icon/icons.dart';
import 'package:vansen/model/country.dart';
import 'package:vansen/sign_up/sign_up_view_model.dart';
import 'package:velocity_x/velocity_x.dart';

class CountryItem extends GetView<SignUpViewModel> {
  const CountryItem(
      {super.key,
      required this.onActionCountry,
      required this.country,
      required this.isSelected});

  final CountryModel country;
  final VoidCallback onActionCountry;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final checkColor = isSelected ? VSColors.k2bb62b : Colors.black;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: Colors.transparent,
      child: HStack(
        [
          CachedNetworkImage(
            imageUrl: country.sv502 ?? '',
            width: 30,
            height: 30,
            fit: BoxFit.cover,
          ).cornerRadius(15),
          const WidthBox(15),
          (country.sv501 ?? '')
              .text
              .size(14)
              .color(checkColor)
              .bold
              .make()
              .expand(),
          if (isSelected)
            const Icon(
              VSIcons.tick,
              color: VSColors.k2bb62b,
            )
        ],
      ),
    ).onTap(onActionCountry);
  }
}
