import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Color.fromARGB(211, 12, 0, 0);

  static final ThemeData lightTheme = ThemeData.light().copyWith(

    primaryColor: const Color.fromARGB(211, 12, 0, 0),

     elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary:const Color.fromARGB(211, 12, 0, 0),
          shape: const StadiumBorder(),
          elevation: 0,
        ),
      ),
      appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 2,
      ),
      textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom( primary: primary)
      ),

       inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle( color: primary),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide( color: primary),
          borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide( color: primary),
          borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
       )

  );

  
}