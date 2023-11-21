import 'package:calculator_app/constants/colors.dart';
import 'package:flutter/material.dart';
class CustomTextField extends StatefulWidget {
    const CustomTextField({
    super.key,
      required this.controller
  });
  final TextEditingController controller;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 30),
      child: TextField(
        controller: widget.controller,
        style: const TextStyle(fontSize: 50),
        readOnly: true,
        autofocus: true,
        showCursor: true,
        decoration: const InputDecoration(
          enabledBorder: InputBorder.none,
          fillColor: AppColors.primaryColor,
          filled: true,
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,

        ),
      ),
    );
  }
}
