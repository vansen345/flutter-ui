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
      this.colorBorder});

  final String? placeHolder;
  final bool? isShow;
  final bool? isShowPass;
  final Color? colorBorder;
  final bool? isPassword;
  final TextEditingController? textEditingController;
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
      onChanged: (value) {
        // onChanged!(value);
      },
      obscuringCharacter: '•',
      obscureText: widget.isShowPass! ? false : obscured,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(15),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          borderSide: BorderSide(
            color: VSColors.ke8e8e8,
            width: 2,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          borderSide: BorderSide(
            color: VSColors.ke8e8e8,
            width: 2,
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

// class InputLogin extends StatefulWidget {
//     const InputLogin({Key? key}) : super(key: key);

//     @override
    
// }

//   final Function(String)? onChanged;
//   final TextEditingController? textEditingController;
//   final String? placeHolder;
//   final bool? isShow;
//   final bool? isPassword;
//   final IconData? icon;
//   final bool? obscureText;
//   final VoidCallback? onChange;

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       textInputAction: TextInputAction.search,
//       controller: textEditingController,
//       keyboardType: TextInputType.visiblePassword,
//       onChanged: (value) {
//         // onChanged!(value);
//       },
//       obscuringCharacter: '*',
//       obscureText: true,
//       decoration: InputDecoration(
//         contentPadding: const EdgeInsets.all(15),
//         enabledBorder: const OutlineInputBorder(
//           borderRadius: BorderRadius.all(
//             Radius.circular(15),
//           ),
//           borderSide: BorderSide(
//             color: VSColors.ke8e8e8,
//             width: 2,
//           ),
//         ),
//         focusedBorder: const OutlineInputBorder(
//           borderRadius: BorderRadius.all(
//             Radius.circular(15),
//           ),
//           borderSide: BorderSide(
//             color: VSColors.ke8e8e8,
//             width: 2,
//           ),
//         ),
//         suffixIcon: isShow!
//             ? Icon(
//                 icon,
//               ).onTap(onChange)
//             : const SizedBox.shrink(),
//         hintStyle: const TextStyle(
//           fontSize: 15,
//           fontWeight: FontWeight.w500,
//           color: VSColors.ka0a0a0,
//         ),
//         hintText: placeHolder ?? '',
//         fillColor: Colors.white,
//       ),
//     );
//   }

 
// }
