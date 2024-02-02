import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppThemeData {
  static ThemeData lightThemeData = ThemeData(
    // colorSchemeSeed: AppColors.primaryColor,
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.primaryColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        hintStyle: TextStyle(
          color: Colors.grey.shade400,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primaryColor,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primaryColor,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primaryColor,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
      ),
      textTheme: TextTheme(
        titleLarge: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade600,
        ),
      ),

      
      
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          backgroundColor: AppColors.primaryColor,
          padding: const EdgeInsets.symmetric(vertical: 12),
          textStyle: const TextStyle(
            fontSize: 14,
            letterSpacing: 0.5,
          ),
          foregroundColor: Colors.white,
        ),
      ),

      
      
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: AppColors.primaryColor,
          )
      ),

      appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          backgroundColor: Colors.white,
          elevation: 5
      )
  );
}

// TextFormField get textFormField {
//   return TextFormField(
//     decoration: InputDecoration(
//         prefixIcon: const Icon(Icons.search),
//         hintText: "Search",
//         filled: true,
//         fillColor: Colors.grey.shade300,
//         border: InputBorder.none,
//         focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide.none,
//             borderRadius: BorderRadius.circular(10)),
//         enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide.none,
//             borderRadius: BorderRadius.circular(10)),
//         disabledBorder: OutlineInputBorder(
//             borderSide: BorderSide.none,
//             borderRadius: BorderRadius.circular(10))),
//   );
// }
