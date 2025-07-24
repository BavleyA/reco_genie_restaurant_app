import 'package:flutter/material.dart';

class AppButtonSheetTheme {

  AppButtonSheetTheme._();

  static final BottomSheetThemeData lightButtonSheetThemeData = BottomSheetThemeData(
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    showDragHandle: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0),
    ),
    elevation: 0,
    constraints: const BoxConstraints(
      minWidth: double.infinity,
    ),
  );

  static final BottomSheetThemeData darkButtonSheetThemeData = BottomSheetThemeData(
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    showDragHandle: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0),
    ),
    elevation: 0,
    constraints: const BoxConstraints(
      minWidth: double.infinity,
    ),
  );
}
