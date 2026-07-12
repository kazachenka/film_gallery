import 'package:flutter/material.dart';

final lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.lightBlueAccent,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      elevation: 1,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 26.0,
      ),
    ),
    scaffoldBackgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: Colors.black,
        fontSize: 16.0,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontSize: 14.0
      ),
      bodySmall: TextStyle(
        color: Colors.black,
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
      ),
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: Colors.lightBlueAccent,
      indicatorColor: Colors.white,
      height: 70,
      iconTheme: WidgetStateProperty.resolveWith<IconThemeData?>((states) {
        if (states.contains(WidgetState.selected)) {
          return const IconThemeData(color: Colors.lightBlueAccent);
        }

        return const IconThemeData(color: Colors.white);
      }),
      labelTextStyle: WidgetStateProperty.resolveWith<TextStyle?>((states) {
        if (states.contains(WidgetState.selected)) {
          return const TextStyle(
            color: Colors.white,
          );
        }

        return const TextStyle(
          color: Colors.white,
        );
      }),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        textStyle: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
);