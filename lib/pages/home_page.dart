import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final double days = 30.99;
  final String name  = "Codepur";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catlog App"),),
      body: Center(
          child: Text( "Welcome to $days days of $name")
              ),

      drawer: Drawer(),
    ) ;
  
  }
}