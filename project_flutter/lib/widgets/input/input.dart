import 'package:flutter/material.dart';
import 'package:vansen/gen/colors.gen.dart';
import 'package:vansen/icon/icons.dart';

class InputSearch extends StatelessWidget {
  const InputSearch({
    super.key,
    this.textEditingController,
    required this.onChanged,
    this.isLogin,
    this.color,
  });

  final Function(String) onChanged;
  final Color? color;
  final TextEditingController? textEditingController;
  final bool? isLogin;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: VSColors.k686868,
      textInputAction: TextInputAction.search,
      controller: textEditingController,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        color: VSColors.k686868,
        fontSize: 14,
      ),
      onChanged: (value) {
        onChanged(value);
      },
      decoration: const InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.all(8),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide.none),
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: VSColors.ka0a0a0,
        ),
        hintText: 'Search country',
        suffixIconColor: VSColors.ka0a0a0,
        prefixIcon: Icon(
          VSIcons.search,
          size: 20,
        ),
        prefixIconColor: VSColors.ka0a0a0,
        fillColor: VSColors.kf0f0f0,
        filled: true,
      ),
    );
  }
}
