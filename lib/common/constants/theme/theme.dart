import 'package:flutter/material.dart';
import 'package:wriety_admin/common/constants/colors.dart';
import 'package:wriety_admin/common/constants/styles.dart';

ThemeData appTheme = ThemeData(
  textTheme: textTheme,
  elevatedButtonTheme: _buildElevatedButtonTheme(),
);

ElevatedButtonThemeData _buildElevatedButtonTheme() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      minimumSize: const Size(double.infinity, 56),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(27),
      ),
      backgroundColor: AppColors.primaryBlackColor,
    ),
  );
}

TextTheme textTheme = TextTheme(
  displayLarge: AppTextStyle.headline1,
  displayMedium: AppTextStyle.headline2,
  displaySmall: AppTextStyle.headline3,
  headlineMedium: AppTextStyle.headline4,
  headlineSmall: AppTextStyle.headline5,
  titleLarge: AppTextStyle.headline6,
  titleMedium: AppTextStyle.subtitle1,
  titleSmall: AppTextStyle.subtitle2,
  bodyLarge: AppTextStyle.bodyText1,
  bodyMedium: AppTextStyle.bodyText2,
  labelLarge: AppTextStyle.button,
);
