import 'package:flutter/material.dart';
import 'package:flutter_catlog/pages/home_page.dart';
import 'package:flutter_catlog/pages/login_page.dart';
import 'package:flutter_catlog/utils/my_route.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bringVegitable();
    return MaterialApp(
      themeMode: ThemeMode.light,

      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.openSans().fontFamily
        ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute : (context) => HomePage(),
        MyRoutes.loginRoute  : (context) => LoginPage(),
      },
    );
  
  }
}

bringVegitable({bool theila = true}){

}

