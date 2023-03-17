import 'package:flutter/material.dart';
import 'package:wriety_admin/common/utils/app_utils.dart';

import 'colors.dart';

abstract class AppTextStyle {
  static const TextStyle _baseTextStyle = TextStyle(
    fontFamily: 'Poppins',
    color: AppColors.primaryBlackColor,
  );

  static TextStyle get headline1 {
    return _baseTextStyle.copyWith(
      fontSize: 32.responsiveHeight(),
      // color: Colors.white,
      fontWeight: AppFontWeight.poppinsSemiBold,
    );
  }

  static TextStyle get headline2 {
    return _baseTextStyle.copyWith(
      fontSize: 28.responsiveHeight(),
      fontWeight: AppFontWeight.poppinsMedium,
      // color: Colors.black,
      // height: 1.08,
    );
  }

  static TextStyle get headline3 {
    return _baseTextStyle.copyWith(
      fontSize: 22.responsiveHeight(),
      height: 30 / 22,
      fontWeight: AppFontWeight.poppinsSemiBold,
    );
  }

  static TextStyle get headline4 {
    return _baseTextStyle.copyWith(
      fontSize: 20.responsiveHeight(),
      fontWeight: AppFontWeight.poppinsSemiBold,
      // color: Colors.black,
    );
  }

  static TextStyle get headline5 {
    return _baseTextStyle.copyWith(
      fontSize: 18.responsiveHeight(),
      fontWeight: AppFontWeight.poppinsMedium,
      // color: Colors.black,
    );
  }

  static TextStyle get headline6 {
    return _baseTextStyle.copyWith(
      fontSize: 18.responsiveHeight(),
      fontWeight: AppFontWeight.poppinsSemiBold,
      // color: Colors.white,
    );
  }

  static TextStyle get subtitle1 {
    return _baseTextStyle.copyWith(
      fontSize: 16.responsiveHeight(),
      fontWeight: AppFontWeight.poppinsMedium,
      wordSpacing: -1,
    );
  }

  static TextStyle get subtitle2 {
    return _baseTextStyle.copyWith(
      fontSize: 16.responsiveHeight(),
      fontWeight: AppFontWeight.poppinsSemiBold,
      // color: Colors.white,
    );
  }

  static TextStyle get caption {
    return _baseTextStyle.copyWith(
      fontSize: 12.responsiveHeight(),
      // color: AppColors.black,
      fontWeight: AppFontWeight.poppinsMedium,
    );
  }

  static TextStyle get labelSmall {
    return _baseTextStyle.copyWith(
      fontSize: 10.responsiveHeight(),
      // color: AppColors.black,
      fontWeight: AppFontWeight.poppinsSemiBold,
    );
  }

  static TextStyle get bodyText1 {
    return _baseTextStyle.copyWith(
      fontSize: 16.responsiveHeight(),
      fontWeight: AppFontWeight.poppinsRegular,
      // color: Colors.white,
    );
  }

  static TextStyle get bodyText2 {
    return _baseTextStyle.copyWith(
      fontSize: 14.responsiveHeight(),
      fontWeight: AppFontWeight.poppinsMedium,
      // color: Colors.white,
    );
  }

  static TextStyle get button {
    return _baseTextStyle.copyWith(
      fontSize: 18.responsiveHeight(),
      fontWeight: AppFontWeight.poppinsSemiBold,
    );
  }
}

abstract class AppFontWeight {
  static const FontWeight poppinsRegular = FontWeight.w400;
  static const FontWeight poppinsMedium = FontWeight.w500;
  static const FontWeight poppinsSemiBold = FontWeight.w600;
  static const FontWeight poppinsBold = FontWeight.w700;
}
