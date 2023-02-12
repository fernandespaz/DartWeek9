import 'package:flutter/material.dart';

import '../style/colors_app.dart';

class ThemeConfig {
  ThemeConfig._();
  static const _defaultInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(7)),
      borderSide: BorderSide(color: Colors.grey));

  static final theme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black)),
      primaryColor: AppColors.i.primary,
      colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.i.primary,
          primary: AppColors.i.primary,
          secondary: AppColors.i.secondary),
      inputDecorationTheme: const InputDecorationTheme(
        fillColor: Colors.white,
        filled: true,
        isDense: true,
        contentPadding: EdgeInsets.all(13),
        border: _defaultInputBorder,
        enabledBorder:_defaultInputBorder,
        focusedBorder: _defaultInputBorder,
        labelStyle:  TextStyle(color:Colors.black )
      ));
}
