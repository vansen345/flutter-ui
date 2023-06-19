import 'package:flutter/material.dart';
import 'package:vansen/gen/colors.gen.dart';
import 'package:vansen/icon/icons.dart';

AppBar customAppBar({
  String title = "Title",
  VoidCallback? onPressed,
}) {
  return AppBar(
    titleSpacing: 0,
    centerTitle: false,
    foregroundColor: AppColors.ka0a0a0,
    title: Text(
      title,
      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
    ),
    leading: IconButton(
      icon: const Icon(
        AppIcons.back,
      ),
      color: AppColors.k4d92fb,
      iconSize: 16,
      onPressed: onPressed,
    ),
    backgroundColor: Colors.white,
    elevation: 0,
  );
}
