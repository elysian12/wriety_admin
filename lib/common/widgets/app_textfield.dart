import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:wriety_admin/common/constants/colors.dart';
import 'package:wriety_admin/common/constants/styles.dart';

class AppTextField extends StatelessWidget {
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final bool obscureText;
  final String? hintText;
  final List<TextInputFormatter>? inputFormatters;

  const AppTextField({
    Key? key,
    this.onChanged,
    this.keyboardType,
    this.controller,
    this.obscureText = false,
    this.hintText,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      keyboardType: keyboardType,
      controller: controller,
      obscureText: obscureText,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(63),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(63),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(63),
          ),
          hoverColor: AppColors.primaryWhiteColor,
          filled: true,
          fillColor: AppColors.primaryWhiteColor,
          hintText: hintText,
          hintStyle: AppTextStyle.headline5.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColors.primaryBlackShadeColor.withOpacity(0.5),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20)),
    );
  }
}
