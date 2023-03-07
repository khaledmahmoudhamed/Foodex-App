import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: lightBlue,
      secondary: lightBlue,
    ),
    iconTheme: const IconThemeData(color: lightPurple),
    buttonTheme: const ButtonThemeData(
      buttonColor: lightPurple,
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: darkBlue,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: lightSkyBlue
      ),
    ),
    drawerTheme: const DrawerThemeData(backgroundColor: lightRed),
    sliderTheme: const SliderThemeData(
      inactiveTickMarkColor: Colors.transparent,
      activeTickMarkColor: Colors.transparent,
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(Colors.black),
      fillColor: MaterialStateProperty.all(lightPurple),
    ),
    dialogBackgroundColor: darkBlue,
    toggleButtonsTheme: const ToggleButtonsThemeData(
      selectedBorderColor: Colors.transparent,
      borderColor: Colors.transparent,
      fillColor: Colors.transparent,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(
      primary: darkBlue,
      secondary: darkBlue,
    ),
    iconTheme: const IconThemeData(color: darkPurple),
    buttonTheme: const ButtonThemeData(
      buttonColor: darkPurple,
    ),
    scaffoldBackgroundColor: black,
    appBarTheme: const AppBarTheme(
      backgroundColor: lightBlue,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: darkSkyBlue
      ),
    ),
    drawerTheme: const DrawerThemeData(backgroundColor: darkRed),
    sliderTheme: const SliderThemeData(
      inactiveTickMarkColor: Colors.transparent,
      activeTickMarkColor: Colors.transparent,
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(Colors.white),
      fillColor: MaterialStateProperty.all(darkPurple),
    ),
    dialogBackgroundColor: lightBlue,
    toggleButtonsTheme: const ToggleButtonsThemeData(
      selectedBorderColor: Colors.transparent,
      borderColor: Colors.transparent,
      fillColor: Colors.transparent,
    ),
  );
}