import 'package:flutter/material.dart';
import 'package:reco_genie_restaurant_app/core/constants/app_bar_theme.dart';
import 'package:reco_genie_restaurant_app/core/constants/app_text_form_field_theme.dart';
import 'package:reco_genie_restaurant_app/core/constants/app_text_style.dart';

import '../../core/constants/app_button_sheet_theme.dart';
import '../../core/constants/app_elevated_button_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(

    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    appBarTheme: ZAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: AppButtonSheetTheme.lightButtonSheetThemeData,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonThemeData,
    inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,

  );


  static ThemeData darkTheme = ThemeData(

      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: AppTextTheme.darkTextTheme,
      appBarTheme: ZAppBarTheme.darkAppBarTheme,
      bottomSheetTheme: AppButtonSheetTheme.darkButtonSheetThemeData,
      elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonThemeData,
      inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationTheme,

    );

}

