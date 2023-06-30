import 'package:flutter/material.dart';
import 'package:vansen/gen/colors.gen.dart';
import 'package:vansen/icon/icons.dart';
import 'package:velocity_x/velocity_x.dart';

class InputLogin extends StatefulWidget {
  const InputLogin(
      {super.key,
      this.placeHolder,
      this.isShow,
      this.isShowPass,
      this.isPassword,
      this.textEditingController,
      this.colorBorder,
      required this.onChanged,
      this.errorMessage});

  final String? placeHolder;
  final bool? isShow;
  final bool? isShowPass;
  final Color? colorBorder;
  final bool? isPassword;
  final TextEditingController? textEditingController;
  final Function(String) onChanged;
  final String? errorMessage;
  @override
  State<InputLogin> createState() => _InputLogin();
}

class _InputLogin extends State<InputLogin> {
  bool obscured = true;

  void toggleIcon() {
    setState(() {
      obscured = !obscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.search,
      controller: widget.textEditingController,
      keyboardType: TextInputType.visiblePassword,
      onChanged: widget.onChanged,
      obscuringCharacter: '•',
      obscureText: widget.isShowPass! ? false : obscured,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(15),
        // enabledBorder: const OutlineInputBorder(
        //   borderRadius: BorderRadius.all(
        //     Radius.circular(15),
        //   ),
        //   borderSide: BorderSide(
        //     color: VSColors.ke8e8e8,
        //     width: 2,
        //   ),
        // ),
        // focusedBorder: const OutlineInputBorder(
        //   borderRadius: BorderRadius.all(
        //     Radius.circular(15),
        //   ),
        //   borderSide: BorderSide(
        //     color: VSColors.ke8e8e8,
        //     width: 2,
        //   ),
        // ),
        errorText: widget.errorMessage,
        errorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          borderSide: BorderSide(
            width: 2,
            color: widget.colorBorder!,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          borderSide: BorderSide(
            width: 2,
            color: widget.colorBorder!,
          ),
        ),
        suffixIcon: widget.isShow!
            ? Icon(
                obscured ? VSIcons.hide : VSIcons.show,
                color: VSColors.ka0a0a0,
              ).onTap(toggleIcon)
            : const SizedBox.shrink(),
        hintStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: VSColors.ka0a0a0,
        ),
        hintText: widget.placeHolder ?? '',
        fillColor: Colors.white,
      ),
    );
  }
}
